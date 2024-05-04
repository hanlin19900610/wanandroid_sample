package com.mufeng.wanandroid_compose.ui.page.common

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.statusBarsPadding
import androidx.compose.material.Scaffold
import androidx.compose.material.rememberScaffoldState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.currentBackStackEntryAsState
import androidx.navigation.compose.rememberNavController
import com.mufeng.wanandroid_compose.ui.page.main.category.CategoryPage
import com.mufeng.wanandroid_compose.ui.page.main.collect.ProfilePage
import com.mufeng.wanandroid_compose.ui.page.main.home.HomePage
import com.mufeng.wanandroid_compose.ui.page.main.profile.CollectPage
import com.mufeng.wanandroid_compose.ui.theme.AppTheme
import com.mufeng.wanandroid_compose.ui.widgets.BottomNavBarView

@Composable
fun AppScaffold() {

    val navCtrl = rememberNavController()
    val navBackStackEntry by navCtrl.currentBackStackEntryAsState()
    val currentDestination = navBackStackEntry?.destination
    val scaffoldState = rememberScaffoldState()

    Scaffold(
        modifier = Modifier
            .statusBarsPadding()
            .navigationBarsPadding(),
        bottomBar = {
            when (currentDestination?.route) {
                RouteName.HOME -> BottomNavBarView(navCtrl = navCtrl)
                RouteName.CATEGORY -> BottomNavBarView(navCtrl = navCtrl)
                RouteName.COLLECTION -> BottomNavBarView(navCtrl = navCtrl)
                RouteName.PROFILE -> BottomNavBarView(navCtrl = navCtrl)
            }
        },
        content = {
            var homeIndex = remember { 0 }
            var categoryIndex = remember { 0 }

            NavHost(
                modifier = Modifier.background(AppTheme.colors.background),
                navController = navCtrl,
                startDestination = RouteName.HOME
            ) {
                // 首页
                composable(route = RouteName.HOME){
                    HomePage(navCtrl = navCtrl, scaffoldState = scaffoldState)
                }
                //分类
                composable(route = RouteName.CATEGORY) {
                    CategoryPage(navCtrl)
                }

                //收藏
                composable(route = RouteName.COLLECTION) {
                    CollectPage(navCtrl, scaffoldState)
                }

                //我的
                composable(route = RouteName.PROFILE) {
                    ProfilePage(navCtrl, scaffoldState)
                }


            }
        },
    )

}