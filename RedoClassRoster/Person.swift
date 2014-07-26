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
	
	init(names first: String, last: String) {
		self.firstName = first
		self.lastName = last
	}
	
	func fullName() -> String {
		return self.firstName + self.lastName
	}
}
