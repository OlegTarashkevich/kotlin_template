# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# Platform calls Class.forName on types which do not exist on Android to determine platform.
-dontnote retrofit2.Platform
# Platform used when running on Java 8 VMs. Will not be used at runtime.
-dontwarn retrofit2.Platform$Java8

# Retain declared checked exceptions for use by a Proxy instance.
-keepattributes Exceptions



##---------------Begin: proguard configuration for Gson  ----------
 # Gson uses generic type information stored in a class file when working with fields. Proguard
 # removes such information by default, so configure it to keep all of it.
 -keepattributes Signature

 # For using GSON @Expose annotation
 -keepattributes *Annotation*

 # Gson specific classes
 -keep class sun.misc.Unsafe { *; }
 -keep class com.google.gson.stream.** { *; }

 # Application classes that will be serialized/deserialized over Gson
 #-keep class com.lucky.notewidget.model.data.** { *; }

 ##---------------End: proguard configuration for Gson  ----------

# Application classes that will be serialized/deserialized over Gson
-keep class com.google.gson.examples.android.model.** { *; }
-keep class com.google.gson.reflect.TypeToken.** { *; }
-keep class com.google.gson.reflect.TypeToken { *; }

-keep class com.google.gson.** { *; }

##---------------End: proguard configuration for Gson  ----------

-keep class com.android.vending.billing.** { *; }

-dontwarn com.parse.**
-keep class com.parse.** { *; }

-keep class com.splunk.mint.** { *; }


-dontwarn com.google.android.gms.**
-keep class com.google.android.gms.** { *; }

-keep class * extends java.util.ListResourceBundle {
    protected Object[][] getContents();
}

-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
    public static final *** NULL;
}

-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
    @com.google.android.gms.common.annotation.KeepName *;
}

-keepnames class * implements android.os.Parcelable {
    public static final ** CREATOR;
}

 ## http://stackoverflow.com/questions/17861986/how-do-you-interpret-a-deobfuscated-android-crash-report
 ## http://proguard.sourceforge.net/manual/examples.html#stacktrace
-keepattributes SourceFile, LineNumberTable

-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }

-keep class android.support.v7.widget.SearchView { *; }

-keepclasseswithmembernames class * {
    @butterknife.* <fields>;
}

-keepclasseswithmembernames class * {
    @butterknife.* <methods>;
}

-keepclassmembers enum * { *; }

-dontwarn simplesound.**
-keep class simplesound.** { *; }

-keepclasseswithmembernames class * {
    native <methods>;
}

 ## !!! in other case remove this line and all implements Serializable
-keep public class * extends com.ndk.NDK { *; }
-keepclassmembers class * extends com.ndk.NDK { *; }

# ActiveAndroid
-keep class com.activeandroid.** { *; }
-keep class com.activeandroid.**.** { *; }
-keep class * extends com.activeandroid.Model
-keep class * extends com.activeandroid.serializer.TypeSerializer

# Backendless
-dontwarn com.backendless.**
-dontwarn weborb.**
-keep class weborb.** {*;}
-keep class com.backendless.** {*;}
-keep class com.sdk.model.backendless.** {*;}
# Backendless

-dontwarn com.onesignal.**

# OneSignal
-keep class com.google.android.gms.common.api.GoogleApiClient {
    void connect();
    void disconnect();
}

-keep public interface android.app.OnActivityPausedListener {*;}

-keep class com.onesignal.shortcutbadger.impl.AdwHomeBadger { <init>(...); }
-keep class com.onesignal.shortcutbadger.impl.ApexHomeBadger { <init>(...); }
-keep class com.onesignal.shortcutbadger.impl.AsusHomeLauncher { <init>(...); }
-keep class com.onesignal.shortcutbadger.impl.DefaultBadger { <init>(...); }
-keep class com.onesignal.shortcutbadger.impl.NewHtcHomeBadger { <init>(...); }
-keep class com.onesignal.shortcutbadger.impl.NovaHomeBadger { <init>(...); }
-keep class com.onesignal.shortcutbadger.impl.SolidHomeBadger { <init>(...); }
-keep class com.onesignal.shortcutbadger.impl.SonyHomeBadger { <init>(...); }
-keep class com.onesignal.shortcutbadger.impl.XiaomiHomeBadger { <init>(...); }

# OkHttp and Servlet optional dependencies
-dontwarn okio.**
-dontwarn okhttp3.**
-dontwarn com.google.appengine.**
-dontwarn javax.servlet.**

# Support classes for compatibility with older API versions
-dontwarn android.support.**
-dontnote android.support.**

# Retrofit
-keep class com.squareup.okhttp.** { *; }
-keep interface com.squareup.okhttp.** { *; }
-dontwarn com.squareup.okhttp.**

-dontwarn rx.**
-dontwarn retrofit.**
-dontwarn okio.**
-keep class retrofit.** { *; }
-keepclasseswithmembers class * {
    @retrofit.http.* <methods>;
}

-keep class jxl.** { *; }

-keep public class * extends com.sunray.client_manager.model.database.AlarmContainer { *; }


#RxJava
-dontwarn sun.misc.**

-keepclassmembers class rx.internal.util.unsafe.*ArrayQueue*Field* {
   long producerIndex;
   long consumerIndex;
}

-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode producerNode;
}

-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode consumerNode;
}

# js-evaluator-for-android
-keepattributes JavascriptInterface
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

-dontwarn lombok.**

-keepattributes *Annotation*
-keepclassmembers class ** {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }

# Only required if you use AsyncExecutor
-keepclassmembers class * extends org.greenrobot.eventbus.util.ThrowableFailureEvent {
    <init>(java.lang.Throwable);
}

-keep public class org.jsoup.** {
public *;
}


# Video parsing tools for video message preview
-keep class * implements com.coremedia.iso.boxes.Box { *; }
-dontwarn com.coremedia.iso.boxes.**
-dontwarn com.googlecode.mp4parser.authoring.tracks.mjpeg.**
-dontwarn com.googlecode.mp4parser.authoring.tracks.ttml.**

# BottomNavigationView
-keep public class android.support.design.widget.BottomNavigationView { *; }
-keep public class android.support.design.internal.BottomNavigationMenuView { *; }
-keep public class android.support.design.internal.BottomNavigationPresenter { *; }
-keep public class android.support.design.internal.BottomNavigationItemView { *; }