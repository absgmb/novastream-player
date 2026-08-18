# NovaStream Player

Cross-platform Flutter media-player foundation for Android, iOS, macOS and Windows.

## Build with Codemagic

Connect this repository to Codemagic and select the `android_debug_apk` workflow for a directly installable Android APK.

The workflow validates the Flutter project and generates missing platform scaffolding when required. For production releases, configure signing credentials in Codemagic secure environment variables/groups and use `android_release` or the signed iOS workflow.

## Advertising policy

NovaStream ads are a separate service layer. Ads must never pause, seek, mute, cover, or otherwise interrupt active music/video playback.
