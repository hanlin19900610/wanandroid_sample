package com.mufeng.wanandroid_compose.ui.widgets

import androidx.compose.foundation.background
import androidx.compose.material.BottomNavigation
import androidx.compose.material.BottomNavigationItem
import androidx.compose.material.Icon
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.navigation.NavDestination.Companion.hierarchy
import androidx.navigation.NavGraph.Companion.findStartDestination
import androidx.navigation.NavHostController
import androidx.navigation.compose.currentBackStackEntryAsState
import com.mufeng.wanandroid_compose.ui.page.common.BottomNavRoute
import com.mufeng.wanandroid_compose.ui.theme.AppTheme

@Composable
fun BottomNavBarView(navCtrl: NavHostController) {

    val bottomNavList = listOf(
        BottomNavRoute.Home,
        BottomNavRoute.Category,
        BottomNavRoute.Collection,
        BottomNavRoute.Profile,
    )

    BottomNavigation {
        val navBackStackEntry by navCtrl.currentBackStackEntryAsState()
        val currentDestination = navBackStackEntry?.destination
        bottomNavList.forEach { screen ->
            BottomNavigationItem(
                modifier = Modifier.background(AppTheme.colors.themeUi),
                selected = currentDestination?.hierarchy?.any { it.route == screen.routeName } == true,
                icon = {
                    Icon(imageVector = screen.icon, contentDescription = null)
                },
                label = { Text(text = stringResource(id = screen.stringId)) },
                onClick = {
                    println("BottomNavView当前路由 ===> ${currentDestination?.hierarchy?.toList()}")
                    println("当前路由栈 ===> ${navCtrl.graph.nodes}")
                    if (currentDestination?.route != screen.routeName){
                        navCtrl.navigate(screen.routeName){
                            popUpTo(navCtrl.graph.findStartDestination().id){
                                saveState = true
                            }
                            launchSingleTop = true
                            restoreState = true
                        }
                    }
                },
            )
        }
    }

}