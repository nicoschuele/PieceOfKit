//
//  KeyboardManagement.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 27.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import UIKit

public class KeyboardManager {
    let notificationCenter = NotificationCenter.default
    
    var notifyFromObject: Any?
    public var viewsToPushUp: [UIView] = []
    
    
    public init(viewsToPushUp: [UIView], notifyFromObject: Any? = nil) {
        self.notifyFromObject = notifyFromObject
        self.viewsToPushUp = viewsToPushUp
    }
    
    public func pushViewsUpWhenKeyboardWillShow() {
        notificationCenter.addObserver(self, selector: #selector(PieceOfKit.KeyboardManager.pushViewsUp(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: notifyFromObject)
    }
    
    public func pullViewsDownWhenKeyboardWillHide() {
        notificationCenter.addObserver(self, selector: #selector(pushViewsDown(_:)), name: NSNotification.Name.UIKeyboardWillHide, object: notifyFromObject)
    }
    
    public func stopListeningToKeyboardNotifications() {
        notificationCenter.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: notifyFromObject)
        notificationCenter.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: notifyFromObject)
    }
    
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


