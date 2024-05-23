package com.mufeng.wanandroid_compose

import android.annotation.SuppressLint
import android.app.Application
import android.content.Context
import dagger.hilt.android.HiltAndroidApp
import kotlinx.coroutines.CoroutineExceptionHandler
import kotlinx.coroutines.CoroutineName
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import timber.log.Timber

/**
 * 1. 所有使用 Hilt 的 App 必须包含 一个使用 @HiltAndroidApp 注解的 Application
 * 2. @HiltAndroidApp 将会触发 Hilt 代码的生成，包括用作应用程序依赖项容器的基类
 * 3. 生成的 Hilt 组件依附于 Application 的生命周期，它也是 App 的父组件，提供其他组件访问的依赖
 * 4. 在 Application 中设置好 @HiltAndroidApp 之后，就可以使用 Hilt 提供的组件了，
 *    Hilt 提供的 @AndroidEntryPoint 注解用于提供 Android 类的依赖（Activity、Fragment、View、Service、BroadcastReceiver）等等
 *    Application 使用 @HiltAndroidApp 注解
 */
@HiltAndroidApp
class MyApp: Application() {

    companion object {
        lateinit var INSTANCE: MyApp
            private set

        val applicationContext: Context get() { return INSTANCE.applicationContext }

        // 全局CoroutineScope
        val mCoroutineScope by lazy(mode = LazyThreadSafetyMode.SYNCHRONIZED) {
            CoroutineScope(
                SupervisorJob()
                        + Dispatchers.Default
                        + CoroutineName("MyAppJob")
                        + CoroutineExceptionHandler { _, throwable ->
                    throwable.printStackTrace()
                })
        }
    }

    override fun onCreate() {
        super.onCreate()
        INSTANCE = this
        // 策略初始化第三方依赖
        initDepends()
    }

    private fun initDepends() {
        Timber.plant(Timber.DebugTree())
    }


}