//
//  DetailViewController.swift
//  RedoClassRoster
//
//  Created by Leonardo Lee on 7/26/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
	var person: Person!
	
	@IBOutlet weak var firstName: UITextField!
	@IBOutlet weak var lastName: UITextField!
	

    override func viewDidLoad() {
        super.viewDidLoad()
		self.title = self.person.fullName()

        // Do any additional setup after loading the view.
    }
	
	override func viewWillAppear(animated: Bool) {
		firstName.text = person.firstName
		lastName.text = person.lastName
	}
	override func viewWillDisappear(animated: Bool)  {
		person.firstName = firstName.text
		person.lastName = lastName.text
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	

}




