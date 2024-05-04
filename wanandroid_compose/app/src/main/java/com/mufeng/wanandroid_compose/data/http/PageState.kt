package com.mufeng.wanandroid_compose.data.http

sealed class PageState {
    data object Loading : PageState()
    data class Success(val isEmpty: Boolean) : PageState()
    data class Error(val exception: Throwable) : PageState()
}
