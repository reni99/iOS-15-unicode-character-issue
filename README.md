# iOS-15-unicode-character-issue

This documents an issue with unicode characters in UILabel on iOS 15.

## Prerequisites
- Xcode version 13.0 (13A233)
- Simulators for iOS 15.0 & iOS 14.x

## Steps to reproduce

1. Run the app in the simulator with iOS 15.0. The label with the text "Very\u{00AD}VeryVeryVeryVeryVeryLongWordWithASoftHyphenToShowTheIssue" does not break at the expected soft hyphen \u{00AD}.

![Simulator Screen Shot - iPhone 11 - 2021-10-04 at 09 24 37](https://user-images.githubusercontent.com/6748633/135825040-59a12775-561c-4f72-be7c-58408233a5d5.png)

2. Run the app in the simulator with iOS 14.x. The label with the text "Very\u{00AD}VeryVeryVeryVeryVeryLongWordWithASoftHyphenToShowTheIssue" does break at the expected soft hyphen \u{00AD}.

![Simulator Screen Shot - iPhone 12 - 2021-10-04 at 09 41 32](https://user-images.githubusercontent.com/6748633/135825087-f56312f3-e665-4b0e-b827-6ff83fdf237e.png)

## Expected result 

UILabel should behave the same on iOS 15.x and iOS 14.x. \u{00AD} should make the label break at \u{00AD}.
