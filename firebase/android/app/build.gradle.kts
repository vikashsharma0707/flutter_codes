plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android") // ✅ Correct Kotlin plugin ID for Kotlin DSL
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services") // ✅ Correct Kotlin DSL syntax
}

android {
    namespace = "com.example.firebase"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = "11"
    }

    defaultConfig {
        applicationId = "com.example.firebase"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
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

dependencies {
    // ✅ Import the Firebase BoM (Bill of Materials)
    implementation(platform("com.google.firebase:firebase-bom:33.15.0"))

    // ✅ Individual Firebase SDKs (add as needed)
    implementation("com.google.firebase:firebase-auth")
    implementation("com.google.firebase:firebase-firestore")
}
