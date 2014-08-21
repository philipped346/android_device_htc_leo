android_device_htc_leo
========================

Android device tree for HTC Leo (HD2)

Build requirements:
* kernel/htc/leo  , branch cm-10.2 or kitkat
*  and this commits for UMS-mass_stoarage:  
*  https://gerrit.omnirom.org/#/c/5041/
*  https://gerrit.omnirom.org/#/c/5042/
*  https://gerrit.omnirom.org/#/c/5043/
*  https://gerrit.omnirom.org/#/c/5044/
*  https://gerrit.omnirom.org/#/c/5045/
*  https://gerrit.omnirom.org/#/c/5046/
*  this commit for RIL:
*  https://gerrit.omnirom.org/#/c/7369/
*  this commit for HWUI deny:
*  https://gerrit.omnirom.org/#/c/7674/
*  this commit for write boot.img
*  https://gerrit.omnirom.org/#/c/7714/
*  
WEBKIT PATCH (fix black browser and google now)

based on https://github.com/legaCyMod/   patches

Big thanks!!

Step 1:

add this to your local.xml

<remote  name="gh"
          fetch="git://github.com/" />

<project path="external/webkit" name="legaCyMod/android_external_webkit" remote="gh" revision="cm-11.0" /> 

Step 2:

patch external/chromium

https://github.com/legaCyMod/android_local_manifest/tree/cm-11.0/patches/android_external_chromium


Step 3:

patch external/skia

https://github.com/legaCyMod/android_local_manifest/tree/cm-11.0/patches/android_external_skia


Step 4:

replace webkit with CM11 source only folder webkit

(framework/base/core/java/android/webkit )

patch framework/base/

https://github.com/legaCyMod/android_local_manifest/blob/cm-11.0/patches/android_frameworks_base/0001-Allow-using-Classic-WebView.patch


Step 5:

patch framework webview

https://github.com/legaCyMod/android_local_manifest/tree/cm-11.0/patches/android_frameworks_webview


Step 6:

patch packages apps browser if it not work replace it with cm11 source

https://github.com/legaCyMod/android_local_manifest/tree/cm-11.0/patches/android_packages_apps_Browser


Step 7:

revert this:

https://android.googlesource.com/platform/frameworks/webview/+/android-4.4_r0.7%5E!/

(framework/webview/android.mk  add this: LOCAL_REQUIRED_MODULES := libwebcore webviewchromium)

Step 8:

update boardconfig

TARGET_FORCE_CPU_UPLOAD := true
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := true
