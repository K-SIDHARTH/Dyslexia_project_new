plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")  // use this one, more up-to-date
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.dyslexia_reader"
    compileSdk = 34

    defaultConfig {
        applicationId = "com.example.dyslexia_reader"
        minSdk = 21
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = "11"
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
