//
//  CatalogItem.swift
//  SwiftCatalog
//
//  Created by Ben Johnson on 11/12/15.
//  Copyright © 2015 Pretty Swift. All rights reserved.
//

import UIKit

struct CatalogItem {
    let uniqueID: String
    let title: String
    let image: UIImage
    let category: String
    let itemDescription: String
    var orderQuantity: Int {
        get {
            return NSUserDefaults.standardUserDefaults().integerForKey(uniqueID) ?? 0
        }
        
        set {
            NSUserDefaults.standardUserDefaults().setInteger(newValue, forKey: uniqueID)
        }
    }
}

