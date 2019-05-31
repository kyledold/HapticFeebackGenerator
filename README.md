# HapticFeebackGenerator
```
//
//  File.swift
//  BlankProject
//
//  Created by Kyle Dold on 31/05/2019.
//  Copyright © 2019 Kyle Dold. All rights reserved.
//

import UIKit

/// This class is to encapsulate some of the UINotificationFeedbackGenerator's notifications and the 'if #available(iOS 10.0, *)' statements
/// https://developer.apple.com/design/human-interface-guidelines/ios/user-interaction/feedback/
public class HapticFeebackGenerator {
    
    @available(iOS 10.0, *)
    private static var notificationFeedbackGenerator: UINotificationFeedbackGenerator {
        let notificationFeedbackGenerator = UINotificationFeedbackGenerator()
        notificationFeedbackGenerator.prepare()
        return notificationFeedbackGenerator
    }
    
    /// Generate success haptic feeback
    static func successFeedback() {
        if #available(iOS 10.0, *) {
            print("Success haptic feedback generated")
            return self.notificationFeedbackGenerator.notificationOccurred(.success)
        }
    }
    
    /// Generate warning haptic feeback
    static func warningFeedback() {
        if #available(iOS 10.0, *) {
            print("Warning haptic feedback generated")
            return self.notificationFeedbackGenerator.notificationOccurred(.warning)
        }
    }
    
    /// Generate error haptic feeback
    static func errorFeedback() {
        if #available(iOS 10.0, *) {
            print("Error haptic feedback generated")
            return self.notificationFeedbackGenerator.notificationOccurred(.error)
        }
    }
}
```