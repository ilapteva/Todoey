//
//  Item.swift
//  Todoey
//
//  Created by Ира on 13/08/2019.
//  Copyright © 2019 Irina Lapteva. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
    @objc dynamic var dateCreated: Date?
}
