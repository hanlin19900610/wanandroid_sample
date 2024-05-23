package com.mufeng.wanandroid_compose.core.di

import com.mufeng.wanandroid_compose.core.net.api.UserApi
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import retrofit2.Retrofit
import javax.inject.Singleton

/**
 *
 * 提供UserApi的访问实例
 */

@Module
@InstallIn(SingletonComponent::class)
class DIUserApiServiceModule {

    @Singleton
    @Provides
    fun provideUserApiService(retrofit: Retrofit): UserApi {
        return retrofit.create(UserApi::class.java)
    }
}