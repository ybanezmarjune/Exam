//
//  Default+Ext.swift
//  Exam 101
//
//  Created by chonex on 4/7/19.
//  Copyright © 2019 Marjune. All rights reserved.
//

import Foundation
import CoreData
import UIKit

typealias Default = NSManagedObject
extension NSManagedObject {
    public enum Keys {
        case lastViewed(id: String)
    }
}
extension NSManagedObject.Keys {
    func id() -> String {
        switch self {
        case .lastViewed(let id):
            return id
        }
    }
    func val() -> Date {
        switch self {
        case .lastViewed:
            return Date()
        }
    }
}

extension NSManagedObject {
    func add(_ keys: Keys) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let context = appDelegate.persistentContainer.viewContext
        switch keys {
        case .lastViewed:
            let entity = NSEntityDescription.entity(forEntityName: "Defaults", in: context)!
            let defaults = NSManagedObject(entity: entity, insertInto: context)
            // set value
            defaults.setValue(keys.val(), forKey: "lastView")
            defaults.setValue(keys.id(), forKey: "trackid")
            try? context.save()
        }
    }
    func get(_ keys: Keys) -> Any? {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return nil }
        let context = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Defaults")
        let predicate = NSPredicate(format: "trackid = %@", keys.id())
        fetchRequest.predicate = predicate
        let data = try? context.fetch(fetchRequest)
        return data?.last?.value(forKey: "lastView")
    }
}
