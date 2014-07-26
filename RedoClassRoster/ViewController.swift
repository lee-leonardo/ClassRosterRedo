//
//  ViewController.swift
//  RedoClassRoster
//
//  Created by Leonardo Lee on 7/26/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	var rosterArray = [Person]()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
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

}

