package com.twiliovideowebrtcpro

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.TwilioVideoWebrtcProViewManagerDelegate
import com.facebook.react.viewmanagers.TwilioVideoWebrtcProViewManagerInterface

abstract class TwilioVideoWebrtcProViewManagerSpec<T : View> : SimpleViewManager<T>(), TwilioVideoWebrtcProViewManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = TwilioVideoWebrtcProViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}
