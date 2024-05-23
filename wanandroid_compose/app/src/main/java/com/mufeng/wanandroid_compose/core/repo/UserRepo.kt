package com.mufeng.wanandroid_compose.core.repo

import com.mufeng.wanandroid_compose.core.net.dtos.UserDTO
import kotlinx.coroutines.flow.Flow

interface UserRepo : BaseRepository {
    suspend fun doLogin(username: String, password: String): Flow<UserDTO>
}
