//
//  CatalogTableViewController.swift
//  SwiftCatalog
//
//  Created by Ben Johnson on 11/12/15.
//  Copyright © 2015 Pretty Swift. All rights reserved.
//

import UIKit

class CatalogTableViewController: UITableViewController {
    let catalogItems: [CatalogItem] = {
        guard let URL = NSBundle.mainBundle().URLForResource("CatalogItems", withExtension: "plist") else { return [] }
        return CatalogItemLoader(fileURL: URL).catalogItems
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - UITableViewDataSource

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catalogItems.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CatalogItemCellReuseIdentifier", forIndexPath: indexPath)
        cell.textLabel?.text = catalogItems[indexPath.row].title ?? ""
        cell.imageView?.image = catalogItems[indexPath.row].image

        return cell
    }
}
