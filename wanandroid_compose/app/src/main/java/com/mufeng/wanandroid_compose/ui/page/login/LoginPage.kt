package com.mufeng.wanandroid_compose.ui.page.login

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.ElevatedCard
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.mufeng.wanandroid_compose.R
import com.mufeng.wanandroid_compose.ui.theme.AppTheme
import com.mufeng.wanandroid_compose.ui.theme.dimens

@Composable
internal fun LoginRoute(
    modifier: Modifier = Modifier,
    viewModel: LoginViewModel = hiltViewModel(),
    onNavigateToHome: () -> Unit = {},
    onNavigateToRegistration: () -> Unit = {}
) {
    val loginUiInfo = viewModel.loginUiState.collectAsState().value
    LoginPage(
        loginUiState = loginUiInfo,
        onUserNameChanged = viewModel::onUserNameChanged,
        onPasswordChanged = viewModel::onPasswordChanged,
        login = viewModel::login,
        onNavigateToHome = onNavigateToHome,
        onNavigateToRegistration = onNavigateToRegistration
    )
}

@Composable
fun LoginPage(
    loginUiState: LoginUiState,
    onUserNameChanged: (String) -> Unit,
    onPasswordChanged: (String) -> Unit,
    login: () -> Unit,
    onNavigateToHome: () -> Unit,
    onNavigateToRegistration: () -> Unit
) {

    if (loginUiState.isLoginSuccess) onNavigateToHome()
    Column(
        modifier = Modifier
            .fillMaxSize()
            .verticalScroll(rememberScrollState())
            .padding(20.dp),
        verticalArrangement = Arrangement.Top,
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {

        ElevatedCard(
            modifier = Modifier
                .fillMaxWidth()
        ) {
            Column(
                modifier = Modifier
                    .padding(horizontal = dimens.paddingLarge)
                    .padding(bottom = dimens.paddingExtraLarge)
            ) {
//                MediumTitleText(
//                    modifier = Modifier
//                        .padding(top = dimens.paddingLarge)
//                        .fillMaxWidth(),
//                    text = stringResource(id = R.string.jetpack_compose),
//                    textAlign = TextAlign.Center
//                )
            }
        }

    }

}

@Preview
@Composable
fun LoginPreview() {
    AppTheme {
        LoginPage(LoginUiState("", ""), {}, {}, {}, {}, {})
    }
}