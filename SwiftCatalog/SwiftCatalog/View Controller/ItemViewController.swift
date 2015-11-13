//
//  ViewController.swift
//  SwiftCatalog
//
//  Created by Ben Johnson on 11/10/15.
//  Copyright © 2015 Pretty Swift. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var itemImageView: CircularImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var itemDescriptionLabel: UILabel!
    
    
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
        titleLabel?.text = catalogItem?.title
        itemImageView?.image = catalogItem?.image
        categoryLabel?.text = catalogItem?.category
        itemDescriptionLabel?.text = catalogItem?.itemDescription
    }
}

