# HEIC Converter Pro - Online Build Ready

## 🚀 Quick Start for Online Platforms

This project is configured for building on **Codemagic** and **Bitrise** online platforms.

### 📋 Prerequisites
- Flutter 3.16.0+
- Firebase project setup
- Android keystore (for release builds)
- iOS certificates (for iOS builds)

### 🔧 Setup Instructions

#### 1. Environment Configuration
```bash
# Copy environment template
cp env.example .env

# Update with your values
nano .env
```

#### 2. Firebase Setup
- Create Firebase project
- Download `google-services.json` for Android
- Download `GoogleService-Info.plist` for iOS
- Place in appropriate directories

#### 3. Online Platform Setup

##### Codemagic
1. Connect your repository to Codemagic
2. Configure environment variables:
   - `FCI_KEYSTORE_PATH`
   - `FCI_KEYSTORE_PASSWORD` 
   - `FCI_KEY_ALIAS`
   - `FCI_KEY_PASSWORD`
   - `GOOGLE_PLAY_SERVICE_ACCOUNT_CREDENTIALS`
3. Run workflow: `heic-converter-pro-android`

##### Bitrise
1. Connect your repository to Bitrise
2. Configure secrets:
   - Android signing secrets
   - iOS signing secrets
3. Run workflow: `primary` (Android) or `ios-release` (iOS)

### 🏗️ Build Commands

#### Local Development
```bash
# Setup environment
./scripts/setup_environment.sh

# Build Android
./scripts/build_android.sh -t debug -e development

# Build iOS (macOS only)
./scripts/build_ios.sh -t debug -e development
```

#### Production Builds
```bash
# Android Release
./scripts/build_android.sh -t release -e production

# iOS Release (macOS only)
./scripts/build_ios.sh -t release -e production
```

### 📱 Supported Platforms
- **Android**: API 21+ (Android 5.0+)
- **iOS**: iOS 12.0+
- **Build Types**: Debug, Release
- **Environments**: Development, Staging, Production

### 🔐 Signing Configuration
- **Android**: Keystore-based signing
- **iOS**: Certificate and provisioning profile
- **Automated**: CI/CD platforms handle signing

### 📦 Output Files
- **Android**: APK, App Bundle (AAB)
- **iOS**: IPA file
- **Locations**: `build/app/outputs/` (Android), `build/ios/ipa/` (iOS)

### 🚀 Deployment
- **Google Play Store**: Automated via Codemagic
- **Apple App Store**: Automated via Codemagic/Bitrise
- **TestFlight**: Built-in support
- **Internal Testing**: Both platforms support

### ⚡ Quick Build
For immediate online build:

1. Push code to repository
2. Connect to Codemagic/Bitrise
3. Configure environment variables
4. Trigger build
5. Download artifacts

### 📞 Support
- Check `BUILD_READY_CHECKLIST.md` for detailed setup
- Refer to `CI_CD_SETUP_GUIDE.md` for comprehensive guide
- Use build scripts for local testing

---
**Ready for online builds! 🎯**
