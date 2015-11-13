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
    @IBOutlet weak var orderQuantityStepper: UIStepper!
    @IBOutlet weak var orderQuantityLabel: UILabel!
    
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
        orderQuantityStepper?.value = Double(catalogItem?.orderQuantity ?? 0)
        orderQuantityLabel?.text = NSNumberFormatter.localizedStringFromNumber(catalogItem?.orderQuantity ?? 0, numberStyle: .DecimalStyle)
    }
    
    // MARK: User Interaction
    @IBAction func handleOrderQuantityChanged(sender: UIStepper) {
        catalogItem?.orderQuantity = Int(sender.value)
    }
}

