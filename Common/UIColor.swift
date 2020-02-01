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
    
    convenience init(r: Int, g: Int, b: Int, alpha: CGFloat? = nil) {
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(alpha ?? 255) / 255)
    }
    
    // MARK: hex 8 (alpha+rgb) init
    
    convenience init(hex8 color: Int) {
        let mask = 0x000000FF
        
        let alpha = CGFloat(color >> 24 & mask) / 255.0
        
        self.init(hex6: color, alpha: alpha)
    }
    
    // MARK: hex 6 init
    
    convenience init(hex6 color: Int, alpha: CGFloat? = nil) {
        let mask = 0x000000FF
        
        let red = CGFloat(color >> 16 & mask) / 255.0
        let green = CGFloat(color >> 8 & mask) / 255.0
        let blue = CGFloat(color & mask) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha ?? 255)
    }
}
