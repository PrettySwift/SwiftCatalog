//
//  ViewController.swift
//  SwiftCatalog
//
//  Created by Ben Johnson on 11/10/15.
//  Copyright © 2015 Pretty Swift. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    // TODO: Make IBOutlets from the storyboard for the title label, circular image view, category label, and item description label
    
    var catalogItem: CatalogItem? {
        didSet {
            updateCatalogItem()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateCatalogItem()
    }

    func updateCatalogItem() {
        // TODO: Update the UI with information from the new CatalogItem
    }
}

