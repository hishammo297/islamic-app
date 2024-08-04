package com.example.islamic

import android.os.Build
import android.os.Bundle
import androidx.core.view.WindowCompat
import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity(){
    override fun onCreate(savedInstanceState: Bundle?){
        WindowCompat.setDecorFitSystemWindows(getWindow(). false)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S){
            splashScreen.setOnExitAnimationListener{ splashScreeenView -> splashScreeenView.remove()}
        }
        super.onCreate(savedInstanceState)
    }
}
