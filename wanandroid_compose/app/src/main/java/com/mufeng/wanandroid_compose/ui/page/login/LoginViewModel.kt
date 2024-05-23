package com.mufeng.wanandroid_compose.ui.page.login

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.mufeng.wanandroid_compose.MyApp
import com.mufeng.wanandroid_compose.R
import com.mufeng.wanandroid_compose.core.net.helper.ReasonException
import com.mufeng.wanandroid_compose.core.repo.UserRepoImpl
import com.mufeng.wanandroid_compose.utils.logE
import com.mufeng.wanandroid_compose.utils.showToast
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.onCompletion
import kotlinx.coroutines.flow.onStart
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class LoginViewModel @Inject constructor(
    private val repo: UserRepoImpl
) : ViewModel() {

    val loginUiState by lazy {
        MutableStateFlow(
            LoginUiState()
        )
    }

    fun onUserNameChanged(userName: String) {
        loginUiState.value = loginUiState.value.copy(userName = userName)
    }

    fun onPasswordChanged(password: String) {
        loginUiState.value = loginUiState.value.copy(password = password)
    }

    fun login() {
        viewModelScope.launch {
            repo.doLogin(loginUiState.value.userName, loginUiState.value.password)
                .onStart {
                    loginUiState.value = loginUiState.value.copy(isLoading = true)
                }
                .onCompletion {
                    loginUiState.value = loginUiState.value.copy(isLoading = false)
                }
                .catch {
                    if (it is ReasonException) {
                        showToast(it.errMsg)
                    }
                }
                .collect {
                    showToast("登录成功")
                    logE(it, "登录成功！")
                    loginUiState.value = loginUiState.value.copy(isLoginSuccess = true)
                }
        }
    }

}

data class LoginUiState(
    val userName: String = "",
    val password: String = "",
    val isLoading: Boolean = false, // 是否在登录
    val errorStr: String? = null,
    val isLoginSuccess: Boolean = false, // 是否登录成功
) {
    fun isFormValid(): Boolean {
        return userName.isNotEmpty() && password.isNotEmpty()
    }
}