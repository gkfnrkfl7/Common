//
//  UIColor.swift
//  Common
//
//  Created by 박기석 on 2020/02/01.
//  Copyright © 2020 Peter. All rights reserved.
//

import UIKit

extension UIColor {
    
    // MARK: rgb 255 init
    convenience init(r: Int, g: Int, b: Int, a: CGFloat? = nil) {
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a ?? 255) / 255)
    }
}
