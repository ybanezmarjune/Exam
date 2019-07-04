//
//  NSManagerObject.swift
//  Exam 101
//
//  Created by chonex on 4/7/19.
//  Copyright © 2019 Marjune. All rights reserved.
//

import Foundation
import UIKit
import CoreData

extension NSManagedObjectContext {
    static func context() -> NSManagedObjectContext? {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return nil }
        let context = appDelegate.persistentContainer.viewContext
        return context
    }
}
