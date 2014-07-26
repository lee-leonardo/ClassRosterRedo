//
//  ViewController.swift
//  RedoClassRoster
//
//  Created by Leonardo Lee on 7/26/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
	var rosterArray = [Person]()
	
	@IBOutlet var tableView : UITableView?
	
//MARK: ViewController
	override func viewDidLoad() {
		super.viewDidLoad()
		self.title = "Class Roster"
		createRoster()
		
	}
	override func viewWillAppear(animated: Bool) {
		tableView?.reloadData()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
//MARK: Custom Methods
	func createRoster() {
		rosterArray.append(Person(names: "John", last: "Clem"))
		rosterArray.append(Person(names: "Brad", last: "Johnson"))
		rosterArray.append(Person(names: "Leonardo", last: "Lee"))
		rosterArray.append(Person(names: "Jeff", last: "Gayle"))
		rosterArray.append(Person(names: "Michael", last: "Tirenin"))
		rosterArray.append(Person(names: "Collin", last: "Atherton"))
		rosterArray.append(Person(names: "Alex", last: "Rice"))
		rosterArray.append(Person(names: "Kirby", last: "Shabaga"))
		rosterArray.append(Person(names: "Victor", last: "Adu"))
		rosterArray.append(Person(names: "Dan", last: "Hoang"))

		
	}
	
//MARK: UITableViewDataSource
	func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
		return rosterArray.count
	}
	func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
		let cell = tableView.dequeueReusableCellWithIdentifier("RosterCell", forIndexPath: indexPath) as UITableViewCell
		cell.textLabel.text = rosterArray[indexPath.row].firstName
		cell.detailTextLabel.text = rosterArray[indexPath.row].lastName
		
		if let hasImage = rosterArray[indexPath.row].personImage {
			cell.imageView.image = hasImage
		}
		
		return cell
	}
	
//MARK: UITableViewDelegate

//MARK: Segue
	override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
		var indexPath = tableView!.indexPathForSelectedRow()
		if segue.identifier == "ShowDetail" {
			let destination = segue.destinationViewController as DetailViewController
			destination.person = rosterArray[indexPath.row]
			tableView?.deselectRowAtIndexPath(indexPath, animated: true) //Nice little graphical clean up at the end.
		}
	}
}







