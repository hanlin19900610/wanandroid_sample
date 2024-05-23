package com.mufeng.wanandroid_compose.utils

import android.content.pm.ApplicationInfo
import com.mufeng.wanandroid_compose.MyApp


object MFAppUtil {
    fun isApkInDebug(): Boolean {
        return try {
            val info = MyApp.applicationContext.applicationInfo
            info.flags and ApplicationInfo.FLAG_DEBUGGABLE != 0
        } catch (e: Exception) {
            false
        }
    }

}