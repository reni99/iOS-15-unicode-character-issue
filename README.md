# iOS-15-unicode-character-issue

This documents an issue with unicode characters in UILabel on iOS 15.

## Prerquisits
- Xcode version 13.0 (13A233)
- Simulators for iOS 15.0 & iOS 14.x

## Steps to reproduce

1. Run the app in the simulator with iOS 15.0. The label with the text "Very\u{00AD}VeryVeryVeryVeryVeryLongWordWithASoftHyphenToShowTheIssue" does not break at the expected soft hyphen \u{00AD}.

2. Run the app in the simulator with iOS 14.x. The label with the text "Very\u{00AD}VeryVeryVeryVeryVeryLongWordWithASoftHyphenToShowTheIssue" does break at the expected soft hyphen \u{00AD}.

## Expected result 

UILabel should behave the same on iOS 15.x and iOS 14.x. \u{00AD} should make the label break at \u{00AD}.
