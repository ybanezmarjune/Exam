//
//  Date+Ext.swift
//  Exam 101
//
//  Created by chonex on 4/7/19.
//  Copyright © 2019 Marjune. All rights reserved.
//

import Foundation

extension Date {
    func lastViewFormat() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy hh:mm:ss"
        return formatter.string(from: self)
    }
}
