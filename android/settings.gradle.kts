pluginManagement {
    repositories {
        gradlePluginPortal()
        google()
        mavenCentral()
        maven { url = uri("https://storage.googleapis.com/download.flutter.io") } // ✅ Add this
    }
    plugins {
        id("com.android.application") version "8.3.0" apply false
        id("org.jetbrains.kotlin.android") version "1.9.22" apply false
        id("dev.flutter.flutter-gradle-plugin") version "1.0.0" apply false // ✅ Add this
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.PREFER_SETTINGS)
    repositories {
        google()
        mavenCentral()
        maven { url = uri("https://storage.googleapis.com/download.flutter.io") } // ✅ Add this too
    }
}

rootProject.name = "dyslexia_reader"
include(":app")
