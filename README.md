# MyFirstApp

A **real native iPhone app** built with **SwiftUI**, maintained entirely in GitHub.

You can edit this project using Safari on your iPhone. GitHub Actions will generate the Xcode project and compile your app on a hosted macOS runner, so you do not need a Mac to edit or build it.

## What's in this repository?

- `MyFirstApp/MyFirstAppApp.swift` — the native SwiftUI entry point.
- `MyFirstApp/ContentView.swift` — the app's screen (try editing this!).
- `project.yml` — XcodeGen configuration; generates an Xcode project.
- `.github/workflows/ios-build.yml` — automatic GitHub Actions build.
- `.gitignore` — keeps generated files out of source control.

## Build on your iPhone

1. Open the **Actions** tab of this repository in Safari.
2. Select **Build iOS App**, then choose **Run workflow** (or see the automatic run after each push to `main`).
3. Open the successful workflow run and find its **Artifacts** section.
4. The `MyFirstApp-build` artifact contains a generated Xcode project ZIP and an **unsigned test IPA**.

**Important:** The unsigned IPA is **not installable** on an ordinary iPhone. An IPA must be signed with an Apple-issued certificate and a provisioning profile that authorizes your device or an appropriate distribution method. Simply compiling an IPA on GitHub does not bypass iOS signing requirements.

### Can I install it without publishing on the App Store?

Yes, with a valid signing and distribution method. An Apple Developer Program membership can enable Ad Hoc signing for registered devices, and TestFlight can distribute builds without a public App Store release (subject to Apple's requirements). A free personal Apple account generally requires Xcode with a connected Mac to provision and install on your own phone; GitHub Actions alone cannot complete this step with only an unsigned IPA.

This starter workflow intentionally **does not ask you to upload Apple certificates or passwords**. Once you have a valid signing setup, the workflow can be extended to export an installable, signed IPA.

## Edit the app

From your iPhone, open `MyFirstApp/ContentView.swift` in GitHub and tap the pencil icon to edit it. Commit your change to `main`; GitHub Actions will rebuild the app.

## Build locally if you use a Mac later

Install [XcodeGen](https://github.com/yonaskolb/XcodeGen), then run:

```sh
xcodegen generate
xcodebuild -project MyFirstApp.xcodeproj -scheme MyFirstApp -configuration Debug -sdk iphonesimulator -destination 'generic/platform=iOS Simulator' CODE_SIGNING_ALLOWED=NO build
```

This template targets iOS 17 or newer and uses Apple's SwiftUI framework. No web view is used.
