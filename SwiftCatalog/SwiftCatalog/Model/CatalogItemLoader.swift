//
//  CatalogItemLoader.swift
//  SwiftCatalog
//
//  Created by Ben Johnson on 11/12/15.
//  Copyright © 2015 Pretty Swift. All rights reserved.
//

import UIKit

class CatalogItemLoader {
    static let UniqueIDKey = "Unique ID"
    static let TitleKey = "Title"
    static let ImageKey = "Image"
    static let CategoryKey = "Category"
    static let ItemDescriptionKey = "Item Description"
    
    let fileURL: NSURL
    
    lazy var catalogItems: [CatalogItem] = {
        guard let items = NSArray(contentsOfURL: self.fileURL) as? Array<[String: String]> else { return [] }
        return items.flatMap {
            guard let uniqueID = $0[UniqueIDKey], title = $0[TitleKey], imageName = $0[ImageKey], image = UIImage(named: imageName), category = $0[CategoryKey], itemDescription = $0[ItemDescriptionKey] else { return nil }
            return CatalogItem(uniqueID: uniqueID, title: title, image: image, category: category, itemDescription: itemDescription)
        }
    }()
    
    init(fileURL: NSURL) {
        self.fileURL = fileURL
    }
}