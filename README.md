# SwiftCatalog
Sample project for Pretty Swift

Completing the SwiftCatalog project for [Pretty Swift](http://www.prettyswift.co/lessons/) will teach you the highlights of iOS development and reinforce the concepts you learned in the Pretty Swift course.

SwiftCatalog is a master-detail application that lets users browse Swift products. The requirements for each part of the sample project are below.

# Organization
This repository has a branch for each step in the project. The `master` branch has the completed, functional project.

# Project instructions

## View Controllers
Create a view controller that shows details about a Swift item that customers can order from the Swift Catalog.

### Tasks
- Check out the `view-controllers` branch
- In *Main.storyboard*, edit the *Item View Controller Scene* to look like the screenshot below. You will not need to write any Swift code to complete this exercise.
![Finished `ItemViewController`](Screenshots/view-controllers-screenshot.png)

## Views
Make a custom `UIImageView` subclass that displays an image in side a circle with a colored border.

### Tasks
- Check out the `views` branch
- Edit the file *CircularImageView.swift* to create a custom view that displays an image inside a circle with a colored circle.
- As you make changes to the `CircularImageView`, look at the storyboard. You should see the image view in the storyboard update to reflect your changes.
![Finished `CircularImageView`](Screenshots/views-screenshot.png)

## Models

### Tasks
- Check out the `models` branch
- Edit the file *CatalogItem.swift* to model an item from the Swift catalog. An item has a title of type `String`, an image of type `UIImage`, an item description of type `String`, category of type `String`, and an order quantity of type `Int`. Think about which attributes should be mutable and which should be immutable.

## Tables
Create a table to show a list of all the items sold in the Swift Catalog.

### Tasks
- Check out the `tables` branch
- Edit `CatalogTableViewController` to implement the appropriate `UITableViewDelegate` and `UITableViewDataSource` methods.
![Finished `CatalogTableViewController`](Screenshots/tables-screenshot.png)

## Navigation
Navigate between the catalog screen and the catalog item details screen. Learn how to pass information between View Controllers.

### Tasks
- Checkout the `navigation` branch
- Edit `CatalogTableViewController` and `ItemViewController` to pass currently selected `CatalogItem` from the `CatalogTableViewController` instance to the `ItemViewController` instance. Create IBOutlets from the storyboard to `ItemViewController`.
![Finished navigation](Screenshots/navigation-screenshot.gif)