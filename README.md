# phone_authentication
This is an example of a phone authentication project using firebase


Setup Package

if you getting error on code, you must getting all packages
1. open terminal
2. type "flutter pub get"

Setup Firebase
1. create project in firebase
2. add platform (android / ios)
3. download google-service.json and copy to android/app in this project
4. enable firestore and phone authentication, add phone number for testing (recommended)
5. in firebase console go to project setting, add sha1 & sha256 (copy code from your keystore)
6. done

remove rechapta ? 
1. go to -> https://console.cloud.google.com/apis/library/androidcheck.googleapis.com
2. select project 
3. enable android device verification

note: rechapta required if using emulator
