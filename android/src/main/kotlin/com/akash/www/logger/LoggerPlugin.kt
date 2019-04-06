package com.akash.www.logger

import android.util.Log
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.PluginRegistry.Registrar

class LoggerPlugin(registrar: Registrar) : MethodCallHandler {
    companion object {
        @JvmStatic
        fun registerWith(registrar: Registrar): Unit {
            val channel = MethodChannel(registrar.messenger(), "akash")
            channel.setMethodCallHandler(LoggerPlugin(registrar))
        }
    }

    override fun onMethodCall(call: MethodCall, result: Result): Unit {
        if (call.method.equals(Comm.Method)) {
            var message = call.argument<String>("message")
            Log.d(Comm.Method, message)
        } else {
            result.notImplemented()
        }
    }
}
