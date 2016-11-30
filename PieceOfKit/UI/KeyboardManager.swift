//
//  KeyboardManagement.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 27.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import UIKit

/**
 Push/pull views when the keyboard appears and disappears.
 
 In your UIViewController, add a KeyboardManager property:
 
        var kb: KeyboardManager?
 
 In `viewWillAppear(_:)`, initialize it and use the according method to subscribe to the `UIKeyboardWillShow` notification:
 
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
 
            kb = KeyboardManager(viewsToPushUp: [textField, button])
            kb?.pushViewsUpWhenKeyboardWillShow()
        }

 The technique is the same for `viewWillDisappear(_:)`.
 
 */
public class KeyboardManager {
    let notificationCenter = NotificationCenter.default
    
    /// Sets which object should trigger the notification (default to all with `nil`)
    public var notifyFromObject: Any?
    /// The arrays of views that will be moved
    public var viewsToPushUp: [UIView] = []
    
    /**
     Init a KeyboardManager
     
     - Parameter viewsToPushUp: the arrays of views to move up/down
     - Parameter notifyFromObject: which object should trigger the notification (default to all with `nil`)
     */
    public init(viewsToPushUp: [UIView], notifyFromObject: Any? = nil) {
        self.notifyFromObject = notifyFromObject
        self.viewsToPushUp = viewsToPushUp
    }
    
    /**
     Subscribe to the UIKeyboardWillShow notification and pushes the selected view up by the height of the keyboard
     */
    public func pushViewsUpWhenKeyboardWillShow() {
        notificationCenter.addObserver(self, selector: #selector(PieceOfKit.KeyboardManager.pushViewsUp(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: notifyFromObject)
    }
    
    /**
     Subscribe to the UIKeyboardWillHide notification and pulls the selected view down by the height of the keyboard
     */
    public func pullViewsDownWhenKeyboardWillHide() {
        notificationCenter.addObserver(self, selector: #selector(pushViewsDown(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: notifyFromObject)
    }
    
    /**
     Unsubscribe from the keyboard notifications
     */
    public func stopListeningToKeyboardNotifications() {
        notificationCenter.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: notifyFromObject)
        notificationCenter.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: notifyFromObject)
    }
    
    // MARK: private implementation
    
    @objc internal func pushViewsUp(_ notification: NSNotification) {
        if let keyboardRectValue = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            let keyboardHeight = keyboardRectValue.height
            
            for view in viewsToPushUp {
                view.frame.origin.y -= keyboardHeight
            }
        }
    }
    
    @objc internal func pushViewsDown(_ notification: NSNotification) {
        if let keyboardRectValue = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            let keyboardHeight = keyboardRectValue.height
            
            for view in viewsToPushUp {
                view.frame.origin.y += keyboardHeight
            }
        }
        
    }
}


