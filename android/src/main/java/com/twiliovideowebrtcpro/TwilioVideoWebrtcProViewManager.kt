package com.twiliovideowebrtcpro

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = TwilioVideoWebrtcProViewManager.NAME)
class TwilioVideoWebrtcProViewManager :
  TwilioVideoWebrtcProViewManagerSpec<TwilioVideoWebrtcProView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): TwilioVideoWebrtcProView {
    return TwilioVideoWebrtcProView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: TwilioVideoWebrtcProView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "TwilioVideoWebrtcProView"
  }
}
