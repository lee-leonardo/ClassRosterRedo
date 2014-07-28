//
//  DetailViewController.swift
//  RedoClassRoster
//
//  Created by Leonardo Lee on 7/26/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
	var person: Person!
	var navigationPadding = 200
	
	@IBOutlet weak var firstName: UITextField!
	@IBOutlet weak var lastName: UITextField!
	@IBOutlet weak var gitHubHandle: UITextField!
	@IBOutlet weak var twitterHandle: UITextField!
	@IBOutlet weak var personPhoto: UIImageView!

	

    override func viewDidLoad() {
        super.viewDidLoad()
		self.title = self.person.fullName()

        // Do any additional setup after loading the view.
    }
	
	override func viewWillAppear(animated: Bool) {
		firstName.text = person.firstName
		lastName.text = person.lastName
		gitHubHandle.text = person.gitHubHandle
		twitterHandle.text = person.twitterHandle
		
		personPhoto.layer.cornerRadius = 0.5 * personPhoto.frame.width
		personPhoto.layer.borderWidth = 2.0
		personPhoto.layer.borderColor = UIColor.lightGrayColor().CGColor
		personPhoto.layer.masksToBounds = true
	}
	override func viewWillDisappear(animated: Bool)  {
		person.firstName = firstName.text
		person.lastName = lastName.text
		person.gitHubHandle = gitHubHandle.text
		person.twitterHandle = twitterHandle.text
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
//MARK: Touch Methods
	override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
		//Loops through all the subviews checking conditions below.
		for control in self.view.subviews {
			//This line checks if the subView is of type UITextField
			if let selectedControl = control as? UITextField {
				selectedControl.resignFirstResponder()
			}
		}
	}
	
//MARK: Textfield Delegate Methods
	func textFieldDidBeginEditing(textField: UITextField!) {
		let baseWidth = self.view.bounds.width
		let baseHeight = self.view.bounds.height
		var newY = 0 + textField.frame.origin.y - navigationPadding
		var sameX = textField.bounds.origin.x
		
		UIView.animateWithDuration(0.3, animations: { () in
			self.view.bounds = CGRect(x: sameX, y: newY, width: baseWidth, height: baseHeight)
			})
	}
	func textFieldDidEndEditing(textField: UITextField!) {
		let baseWidth = self.view.bounds.width
		let baseHeight = self.view.bounds.height
		
		UIView.animateWithDuration(0.3, animations: { () in
			self.view.bounds = CGRect(x: 0, y: 0, width: baseWidth, height: baseHeight)
			})
	}
}




