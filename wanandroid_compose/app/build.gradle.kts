plugins {
    alias(libs.plugins.google.ksp)
    alias(libs.plugins.google.hilt.android)
    alias(libs.plugins.androidApplication)
    alias(libs.plugins.jetbrainsKotlinAndroid)
    id("androidx.navigation.safeargs.kotlin")
}

android {
    namespace = "com.mufeng.wanandroid_compose"
    compileSdk = 34

    defaultConfig {
        applicationId = "com.mufeng.wanandroid_compose"
        minSdk = 24
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"

        testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
        vectorDrawables {
            useSupportLibrary = true
        }
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
    kotlinOptions {
        jvmTarget = "1.8"
    }
    buildFeatures {
        compose = true
    }
    composeOptions {
        kotlinCompilerExtensionVersion = "1.5.1"
    }
    packaging {
        resources {
            excludes += "/META-INF/{AL2.0,LGPL2.1}"
        }
    }
}

dependencies {

    implementation(libs.androidx.core.ktx)
    implementation(libs.androidx.appcompat)
    implementation(libs.androidx.lifecycle.runtime.ktx)
    implementation(libs.androidx.activity.compose)
    implementation(platform(libs.androidx.compose.bom))
    implementation(libs.androidx.ui)
    implementation(libs.androidx.ui.graphics)
    implementation(libs.androidx.ui.tooling.preview)
    implementation(libs.androidx.material3)

    implementation(libs.hilt.android)
    ksp(libs.hilt.android.compiler)
    implementation(libs.androidx.hilt.navigation.compose)
    implementation(libs.androidx.hilt.lifecycle.viewmodel)
    ksp(libs.androidx.hilt.compiler)

    implementation(libs.androidx.navigation.compose)


    /** accompanist辅助插件 */
    implementation(libs.accompanist.insets)
    implementation(libs.accompanist.coil)
    //系统ui控制器
    implementation(libs.accompanist.systemuicontroller)
    //glide
    implementation(libs.accompanist.glide)
    //viewPager
    implementation(libs.accompanist.pager)
    implementation(libs.accompanist.pager.indicators)
    //下拉刷新
    implementation(libs.accompanist.swiperefresh)
    //流式布局
    implementation(libs.accompanist.flowlayout)
    //placeholder
    implementation(libs.accompanist.placeholder.material)

    //http request
    implementation(libs.converter.gson)
    implementation(libs.retrofit)
    implementation(libs.gson)

    //数据保存，用于cookie持久化
    implementation(libs.androidx.datastore.preferences)
    implementation(libs.androidx.datastore.core)
    implementation(libs.kotlin.reflect)

    //paging分页库
    implementation(libs.androidx.paging.runtime)
    testImplementation(libs.androidx.paging.common)
    implementation(libs.androidx.paging.compose)

    //约束布局
    implementation(libs.androidx.constraintlayout.compose)

    testImplementation(libs.junit)
    androidTestImplementation(libs.androidx.junit)
    androidTestImplementation(libs.androidx.espresso.core)
    androidTestImplementation(platform(libs.androidx.compose.bom))
    androidTestImplementation(libs.androidx.ui.test.junit4)
    debugImplementation(libs.androidx.ui.tooling)
    debugImplementation(libs.androidx.ui.test.manifest)
}