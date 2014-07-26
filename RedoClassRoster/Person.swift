//
//  Person.swift
//  RedoClassRoster
//
//  Created by Leonardo Lee on 7/26/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class Person {
	var firstName : String
	var lastName : String
	var personImage : UIImage?
	var gitHubHandle: String?
	var twitterHandle: String?
	
	init(first: String, last: String) {
		self.firstName = first
		self.lastName = last
	}
	convenience init(first:String, last:String, gitHub:String?, twitter:String?) {
		self.init(first: first, last: last)
		self.gitHubHandle = gitHub
		self.twitterHandle = twitter
	}
	
	func fullName() -> String {
		return self.firstName + self.lastName
	}
}
