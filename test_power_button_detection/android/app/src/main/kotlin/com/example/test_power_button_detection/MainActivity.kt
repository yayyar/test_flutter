package com.example.test_power_button_detection

import android.content.Intent
import android.content.IntentFilter
import android.os.Bundle
import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {

    private val CHANNEL = "power_button_detect_channel"
    companion object {
        var currentActivity: MainActivity? = null
    }

    var flutterEngineReference: FlutterEngine? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        currentActivity = this
        flutterEngineReference = flutterEngine

        val powerButtonDetectReceiver = PowerButtonDetectReceiver()
        val intentFilter = IntentFilter().apply {
            addAction(Intent.ACTION_SCREEN_ON)
            addAction(Intent.ACTION_SCREEN_OFF)
        }

        flutterEngine?.dartExecutor?.let {
            MethodChannel(it.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
                Log.d("MethodChannel", "method => ${call.method}")
                if (call.method == "detectPowerButtonPress") {
                    registerReceiver(powerButtonDetectReceiver, intentFilter)
                } else {
                    result.notImplemented()
                }
            }
        }
    }
}
