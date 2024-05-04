package com.mufeng.wanandroid_compose.ui.page.common

import android.annotation.SuppressLint
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.statusBarsPadding
import androidx.compose.material.Scaffold
import androidx.compose.material.SnackbarHost
import androidx.compose.material.rememberScaffoldState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.currentBackStackEntryAsState
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import com.mufeng.wanandroid_compose.data.bean.WebData
import com.mufeng.wanandroid_compose.ui.page.login.LoginPage
import com.mufeng.wanandroid_compose.ui.page.main.category.CategoryPage
import com.mufeng.wanandroid_compose.ui.page.main.collect.ProfilePage
import com.mufeng.wanandroid_compose.ui.page.main.home.HomePage
import com.mufeng.wanandroid_compose.ui.page.main.profile.CollectPage
import com.mufeng.wanandroid_compose.ui.page.search.SearchPage
import com.mufeng.wanandroid_compose.ui.page.webview.WebViewPage
import com.mufeng.wanandroid_compose.ui.theme.AppTheme
import com.mufeng.wanandroid_compose.ui.widgets.AppSnackBar
import com.mufeng.wanandroid_compose.ui.widgets.BottomNavBarView
import com.mufeng.wanandroid_compose.utils.fromJson

@SuppressLint("UnusedMaterialScaffoldPaddingParameter")
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

                //WebView
                composable(route = RouteName.WEB_VIEW + "/{webData}",
                    arguments = listOf(navArgument("webData") { type = NavType.StringType })
                ) {
                    val args = it.arguments?.getString("webData")?.fromJson<WebData>()
                    if (args != null) {
                        WebViewPage(webData = args, navCtrl = navCtrl)
                    }
                }

                //登录
                composable(route = RouteName.LOGIN) {
                    LoginPage(navCtrl, scaffoldState)
                }

                //文章搜索页
                composable(
                    route = RouteName.ARTICLE_SEARCH + "/{id}",
                    arguments = listOf(navArgument("id") { type = NavType.IntType })
                ) {
                    SearchPage(navCtrl, scaffoldState)
                }
            }
        },
        snackbarHost = {
            SnackbarHost(
                hostState = scaffoldState.snackbarHostState
            ) { data ->
                println("actionLabel = ${data.actionLabel}")
                AppSnackBar(data = data)
            }
        }
    )

}