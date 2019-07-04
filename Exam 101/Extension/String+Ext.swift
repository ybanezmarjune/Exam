//
//  String+Ext.swift
//  Exam 101
//
//  Created by chonex on 4/7/19.
//  Copyright © 2019 Marjune. All rights reserved.
//

import UIKit

extension String {
    func toUrl() ->  URL? {
        return URL(string: self)
    }
}
