//
//  UIViewController+Tag.swift
//  message-everybody
//
//  Created by Josef Zoller on 28.07.19.
//  Copyright © 2019 Josef Zoller. All rights reserved.
//

import UIKit

private var tagAssociationKey: UInt8 = 0

extension UIViewController {
    internal var tag: Int? {
        get {
            return objc_getAssociatedObject(self, &tagAssociationKey) as? Int
        }
        set(newValue) {
            objc_setAssociatedObject(self, &tagAssociationKey, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
    }
}
