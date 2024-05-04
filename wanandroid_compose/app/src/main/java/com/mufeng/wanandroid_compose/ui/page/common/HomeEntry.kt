package com.mufeng.wanandroid_compose.ui.page.common

import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import com.mufeng.wanandroid_compose.ui.page.splash.SplashPage
import com.mufeng.wanandroid_compose.ui.theme.AppTheme

@Composable
fun HomeEntry(){
    // 是否是闪屏页
    var isSplash by remember { mutableStateOf(true) }
    AppTheme {
        if (isSplash){
            SplashPage {
                isSplash = false
            }
        }else{

        }
    }
}