//
//  KeyboardManagement.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele. 
//  Licensed under the Apache License, Version 2.0.
//

import UIKit

/**
 Push/pull views when the keyboard appears and disappears.
 
 In your UIViewController, add a KeyboardManager property:
 
        var kb: KeyboardManager?
 
 In `viewWillAppear(_:)`, initialize it and use the according method to subscribe to the show and hide notifications:
 
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
 
            kb = KeyboardManager(viewsToPushUp: [textField, button])
            kb?.pushViewsUpWhenKeyboardWillShow()
            kb?.pullViewsDownWhenKeyboardWillHide()
        }

 Although not necessary anymore, if you want to stop listening to the notifications, you can call `kb?.stopListeningToKeyboardNotifications()` within `viewWillDisappear(_:)` for example.
 
 */
public class KeyboardManager {
    let notificationCenter = NotificationCenter.default
    
    /// Sets which object should trigger the notification (default to all with `nil`)
    public var notifyFromObject: Any?
    /// The arrays of views that will be moved
    public var viewsToPushUp: [UIView] = []
    
    private var isKeyboardUp = false
    
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
        notificationCenter.addObserver(self, selector: #selector(KeyboardManager.pushViews(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: notifyFromObject)
    }
    
    /**
     Subscribe to the UIKeyboardWillHide notification and pulls the selected view down by the height of the keyboard
     */
    public func pullViewsDownWhenKeyboardWillHide() {
        notificationCenter.addObserver(self, selector: #selector(KeyboardManager.pushViews(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: notifyFromObject)
    }
    
    /**
     Unsubscribe from the keyboard notifications
     */
    public func stopListeningToKeyboardNotifications() {
        notificationCenter.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: notifyFromObject)
        notificationCenter.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: notifyFromObject)
    }
    
    // MARK: private implementation
    
    /**
     Pushes views up or down.
     
     - Parameter notification: `NSNotification`
     */
    @objc internal func pushViews(_ notification: NSNotification) {
        if let keyboardHeight = getKeyboardHeight(notification: notification) {
            print("Keyboard: \(isKeyboardUp)")
            for view in viewsToPushUp {
                if isKeyboardUp {
                    view.frame.origin.y += keyboardHeight
                } else {
                    view.frame.origin.y -= keyboardHeight
                }
            }
            isKeyboardUp.toggle()
            print("Keyboard: \(isKeyboardUp)")
        } else {
            print("No height???")
        }
    }
    
    private func getKeyboardHeight(notification: NSNotification) -> CGFloat? {
        if let keyboardRectValue = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            return keyboardRectValue.height
        }
        return nil
    }
    
}


