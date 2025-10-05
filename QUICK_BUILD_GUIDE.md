# ⚡ Quick Build Guide - Online Platforms

## 🎯 For Immediate Online Builds

### Step 1: Upload to Repository
```bash
# Initialize git (if not already done)
git init
git add .
git commit -m "Initial commit - HEIC Converter Pro"

# Push to GitHub/GitLab/Bitbucket
git remote add origin YOUR_REPOSITORY_URL
git push -u origin main
```

### Step 2: Codemagic Setup (Recommended)

#### A. Connect Repository
1. Go to [codemagic.io](https://codemagic.io)
2. Sign up/Login with your Git provider
3. Click "Add application"
4. Select your repository
5. Import the project

#### B. Configure Environment Variables
Go to **App settings > Environment variables** and add:

**Android Signing:**
```
FCI_KEYSTORE_PATH = /path/to/your/keystore.jks
FCI_KEYSTORE_PASSWORD = your_keystore_password
FCI_KEY_ALIAS = your_key_alias
FCI_KEY_PASSWORD = your_key_password
```

**Google Play (Optional):**
```
GOOGLE_PLAY_SERVICE_ACCOUNT_CREDENTIALS = your_service_account_json
GOOGLE_PLAY_PACKAGE_NAME = com.heicconverter.pro
GOOGLE_PLAY_TRACK = internal
```

#### C. Start Build
1. Go to your app dashboard
2. Click "Start new build"
3. Select workflow: `heic-converter-pro-android`
4. Click "Start build"

### Step 3: Bitrise Setup (Alternative)

#### A. Connect Repository
1. Go to [bitrise.io](https://bitrise.io)
2. Sign up/Login
3. Click "Add new app"
4. Connect your Git provider
5. Select your repository

#### B. Configure Secrets
Go to **App settings > Secrets** and add:

**Android:**
```
ANDROID_KEYSTORE_URL = https://your-keystore-url
ANDROID_KEYSTORE_PASSWORD = your_keystore_password
ANDROID_KEY_ALIAS = your_key_alias
ANDROID_KEY_PASSWORD = your_key_password
```

#### C. Start Build
1. Go to your app dashboard
2. Click "Start/Schedule a Build"
3. Select workflow: `primary` (Android) or `ios-release` (iOS)
4. Click "Start build"

### Step 4: Download Builds

#### Codemagic
1. Go to build details
2. Click "Artifacts" tab
3. Download APK/AAB/IPA files

#### Bitrise
1. Go to build details
2. Click "APPS & ARTIFACTS" tab
3. Download APK/AAB/IPA files

## 🔧 Essential Files for Online Build

Your project includes these ready-to-use files:

- ✅ `codemagic.yaml` - Codemagic configuration
- ✅ `bitrise.yml` - Bitrise configuration  
- ✅ `android/` - Complete Android setup
- ✅ `ios/` - Complete iOS setup
- ✅ `scripts/` - Build automation scripts
- ✅ `env.example` - Environment template

## 🚨 Important Notes

### Before First Build:
1. **Update Firebase Configuration**
   - Download `google-services.json` from Firebase Console
   - Place in `android/app/` directory

2. **Create Android Keystore** (for release builds)
   ```bash
   keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
   ```

3. **Configure Environment Variables**
   - Copy `env.example` to `.env`
   - Update with your actual values

### Build Times:
- **Debug Build**: 5-10 minutes
- **Release Build**: 10-20 minutes
- **First Build**: May take longer due to dependency download

### Supported Workflows:

#### Codemagic
- `heic-converter-pro-android` - Android APK + AAB
- `heic-converter-pro-ios` - iOS IPA
- `heic-converter-pro-test` - Debug build

#### Bitrise  
- `primary` - Android release
- `ios-release` - iOS release
- `test-build` - Debug build
- `app-bundle` - Google Play AAB

## 🎯 Quick Commands

```bash
# Test local build first
./scripts/setup_environment.sh
./scripts/build_android.sh -t debug

# Push to trigger online build
git add .
git commit -m "Ready for online build"
git push
```

## 📱 Expected Outputs

- **Android APK**: `build/app/outputs/flutter-apk/app-release.apk`
- **Android AAB**: `build/app/outputs/bundle/release/app-release.aab`  
- **iOS IPA**: `build/ios/ipa/*.ipa`

---

**Your project is 100% ready for online builds! 🚀**

Just push to your repository and connect to Codemagic or Bitrise!
