# flutter_base

Base project for ios and android application

Flutter SDK v3

Dart SDK 2.17.5

# Install

# Run build runner

```sh
flutter pub run build_runner build --delete-conflicting-outputs
```

# Deep link

## Test deep link

### IOS
```sh
xcrun simctl openurl booted tauwmob://tauwmob
```

### Android
```sh
adb shell am start -a android.intent.action.VIEW \
    -c android.intent.category.BROWSABLE \
    -d "http://tauwmob"
```

## Change deep link

### IOS

Change String tauwmob
```
<key>FlutterDeepLinkingEnabled</key>
		<true/>
		<key>CFBundleURLTypes</key>
		<array>
				<dict>
				<key>CFBundleTypeRole</key>
				<string>Editor</string>
				<key>CFBundleURLName</key>
				<string>tauwmob</string>
				<key>CFBundleURLSchemes</key>
				<array>
				<string>tauwmob</string>
				</array>
				</dict>
		</array>
```

### Android

Change String tauwmob

```xml
<!-- Deep linking -->
<meta-data android:name="flutter_deeplinking_enabled" android:value="true" />
<intent-filter android:autoVerify="true">
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <data android:scheme="http" android:host="tauwmob" />
    <data android:scheme="https" />
</intent-filter>
```