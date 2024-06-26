package com.mufeng.wanandroid_compose.utils

import timber.log.Timber


fun logD(message: String, tag: String = "") {
    if (tag.isNotEmpty()) {
        Timber.tag(tag).d(message)
    } else {
        Timber.d(message, tag)
    }
}


fun logE(message: String, tag: String = "") {
    if (tag.isNotEmpty()) {
        Timber.tag(tag).e(message)
    } else {
        Timber.e(message)
    }
}

fun logE(message: Any, tag: String = "") {
    if (tag.isNotEmpty()) {
        Timber.tag(tag).e(message.toString())
    } else {
        Timber.e(message.toString())
    }
}

fun logI(message: String, tag: String = "") {
    if (tag.isNotEmpty()) {
        Timber.tag(tag).i(message)
    } else {
        Timber.i(message)
    }
}

fun logV(message: String, tag: String = "") {
    if (tag.isNotEmpty()) {
        Timber.tag(tag).v(message)
    } else {
        Timber.v(message)
    }
}

fun logW(message: String, tag: String = "") {
    if (tag.isNotEmpty()) {
        Timber.tag(tag).w(message)
    } else {
        Timber.w(message)
    }
}

fun logWTF(message: String, tag: String = "") {
    if (tag.isNotEmpty()) {
        Timber.tag(tag).wtf(message)
    } else {
        Timber.wtf(message)
    }
}
