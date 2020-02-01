//
//  String.swift
//  Common
//
//  Created by 박기석 on 2020/02/01.
//  Copyright © 2020 Peter. All rights reserved.
//

import Foundation

extension String {
    
    // MARK: Range -> NSRange
    
    func nsRange(from range: Range<String.Index>) -> NSRange {
        return .init(range, in: self)
    }
}
