//
//  ViewController.swift
//  RedoClassRoster
//
//  Created by Leonardo Lee on 7/26/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
//MARK: Properties
	var rosterArray = [Person]()
	
//MARK: IBOutlet
	@IBOutlet var tableView : UITableView?
	
//MARK: ViewController
	override func viewDidLoad() {
		super.viewDidLoad()
		self.title = "Roster"
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
		rosterArray.append(Person(first: "John", last: "Clem"))
		rosterArray.append(Person(first: "Brad", last: "Johnson"))
		rosterArray.append(Person(first: "Leonardo", last: "Lee"))
		rosterArray.append(Person(first: "Jeff", last: "Gayle"))
		rosterArray.append(Person(first: "Michael", last: "Tirenin"))
		rosterArray.append(Person(first: "Collin", last: "Atherton"))
		rosterArray.append(Person(first: "Alex", last: "Rice"))
		rosterArray.append(Person(first: "Kirby", last: "Shabaga"))
		rosterArray.append(Person(first: "Victor", last: "Adu"))
		rosterArray.append(Person(first: "Dan", last: "Hoang"))

		
	}
//MARK: UITableViewDelegate
	func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
		//Is this better to be safe? Or should I make it without an optional? A: Doesn't work as an optional.
		let detail = self.storyboard.instantiateViewControllerWithIdentifier("Detail") as DetailViewController
		detail.person = self.rosterArray[indexPath.row]
		
		if self.navigationController {
			self.navigationController.pushViewController(detail, animated: true)
		}
		
		tableView?.deselectRowAtIndexPath(indexPath, animated: true) //Nice little graphical clean up at the end.

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
//	override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
//		var indexPath = tableView!.indexPathForSelectedRow()
//		if segue.identifier == "ShowDetail" {
//			let destination = segue.destinationViewController as DetailViewController
//			destination.person = rosterArray[indexPath.row]
//			tableView?.deselectRowAtIndexPath(indexPath, animated: true) //Nice little graphical clean up at the end.
//		}
//	}
}







