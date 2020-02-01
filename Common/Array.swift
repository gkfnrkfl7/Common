//
//  Array.swift
//  Common
//
//  Created by 박기석 on 2020/02/01.
//  Copyright © 2020 Peter. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    
    // MARK: Array remove element
    mutating func remove(from element: Element) {
        guard let index = self.firstIndex(of: element) else { return }
        
        self.remove(at: index)
    }
}
