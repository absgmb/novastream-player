# NovaStream Player

Cross-platform Flutter media-player foundation for Android, iOS, macOS and Windows.

## Codemagic: IMPORTANT

This repository is configured to use the **repository `codemagic.yaml` workflow**, not the Flutter Workflow Editor's platform preflight.

1. In Codemagic, add/select the repository `absgmb/novastream-player`.
2. Select the branch `main`.
3. At the top of the Codemagic application page, use **Check for configuration file** / scan the branch for `codemagic.yaml`.
4. Confirm Codemagic detects the root-level `codemagic.yaml`.
5. Start the `android_debug_apk` workflow from that configuration.

Do not use the visual Flutter Workflow Editor's Android/iOS build buttons for this repository. The repository intentionally starts without checked-in native runners; the YAML workflow creates the Flutter Android/iOS platform scaffolding before `flutter pub get` and before the build.

Codemagic's current documentation says a root-level `codemagic.yaml` is used for YAML-configured builds and that, when the file is detected, Flutter Workflow Editor configuration is ignored for those event-triggered builds.

## Expected Android artifact

A successful `android_debug_apk` build produces:

`build/app/outputs/flutter-apk/app-release.apk`

Codemagic keeps that file as a downloadable build artifact.

## Advertising policy

NovaStream ads are a separate service layer. Ads must never pause, seek, mute, cover, replace, or otherwise interrupt active music/video playback. Production ad identifiers must be supplied through Codemagic secure environment variables rather than committed to Git.
