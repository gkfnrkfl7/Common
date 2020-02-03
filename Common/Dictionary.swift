//
//  Dictionary.swift
//  Common
//
//  Created by 박기석 on 2020/02/03.
//  Copyright © 2020 Peter. All rights reserved.
//

import Foundation

extension Dictionary {
    
    // MARK: array -> Dicnary<k, v> init
    
    init<S>(sequence: S, transform: (_ element: S.Element) -> (ket: Key, value: Value)) where S: Sequence {
        self = sequence.reduce(into: [Key: Value]()) { dictionary, current in
            let item = transform(current)
            dictionary[item.ket] = item.value
        }
    }
}
