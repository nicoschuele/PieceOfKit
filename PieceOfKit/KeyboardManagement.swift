//
//  KeyboardManagement.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 27.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import UIKit

public class KeyboardManager {
    var notifyFromObject: Any?
    var observer: Any
    public var viewsToPushUp: [UIView] = []
    
    public init(observer: Any, viewsToPushUp: [UIView], notifyFromObject: Any? = nil) {
        self.observer = observer
        self.notifyFromObject = notifyFromObject
        self.viewsToPushUp = viewsToPushUp
    }
    
    public func pushViewsUpWhenKeyboardWillShow(){
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self.observer, selector: #selector(PieceOfKit.KeyboardManager.pushViewsUp(_:)), name: NSNotification.Name.UIKeyboardWillShow, object: notifyFromObject)
    }
    
    @objc public func pushViewsUp(_ notification: NSNotification) {
        if let keyboardRectValue = (notification.userInfo?[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            let keyboardHeight = keyboardRectValue.height
            
            for view in viewsToPushUp {
                view.frame.origin.y -= keyboardHeight
            }
        }
    }
}


