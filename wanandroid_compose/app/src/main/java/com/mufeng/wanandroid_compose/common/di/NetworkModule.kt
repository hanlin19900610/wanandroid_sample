package com.mufeng.wanandroid_compose.common.di

import com.mufeng.wanandroid_compose.data.http.ApiCall
import com.mufeng.wanandroid_compose.data.http.HttpService
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import okhttp3.OkHttpClient
import javax.inject.Singleton

//这里使用了SingletonComponent，因此 NetworkModule 绑定到 Application 的生命周期
@Module
@InstallIn(SingletonComponent::class)
class NetworkModule {

    @Singleton
    @Provides
    fun provideApiService(): HttpService = ApiCall.retrofit

    @Singleton
    @Provides
    fun provideOkHttp(): OkHttpClient = ApiCall.okHttp
}