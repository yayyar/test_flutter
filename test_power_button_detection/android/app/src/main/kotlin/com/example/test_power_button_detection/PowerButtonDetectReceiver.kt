package com.example.test_power_button_detection

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import io.flutter.plugin.common.MethodChannel

class PowerButtonDetectReceiver : BroadcastReceiver() {
    private var powerButtonPressCount = 0
    override fun onReceive(context: Context?, intent: Intent?) {
        if (intent?.action == Intent.ACTION_SCREEN_ON || intent?.action == Intent.ACTION_SCREEN_OFF) {
            powerButtonPressCount++
            // Send the updated count back to Flutter
            val currentActivity = MainActivity.currentActivity
            val channel = currentActivity?.flutterEngineReference?.dartExecutor?.binaryMessenger?.let {
                MethodChannel(
                    it, "power_button_detect_channel")
            }
            channel?.invokeMethod("updatePowerButtonPressCount", powerButtonPressCount)
        }
    }
}