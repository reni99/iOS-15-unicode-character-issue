# iOS-15-unicode-character-issue

This documents an issue with unicode characters in UILabel on iOS 15.

## Prerequisites
- Xcode version 13.0 (13A233)
- Simulators for iOS 15.0 & iOS 14.x

## Steps to reproduce

1. Run the app in the simulator with iOS 15.0. The label with the text "Very\u{00AD}VeryVeryVeryVeryVeryLongWordWithASoftHyphenToShowTheIssue" does not break at the expected soft hyphen \u{00AD}.

<img width="466" alt="Screenshot 2021-10-04 at 11 14 22" src="https://user-images.githubusercontent.com/6748633/135825348-f3162297-365a-46a9-b166-f47efceecadc.png">

2. Run the app in the simulator with iOS 14.x. The label with the text "Very\u{00AD}VeryVeryVeryVeryVeryLongWordWithASoftHyphenToShowTheIssue" does break at the expected soft hyphen \u{00AD}.

<img width="527" alt="Screenshot 2021-10-04 at 11 14 10" src="https://user-images.githubusercontent.com/6748633/135825338-a325f5f1-50f0-4199-bb84-5280524820cc.png">

## Expected result 

UILabel should behave the same on iOS 15.x and iOS 14.x. \u{00AD} should make the label break at \u{00AD}.
