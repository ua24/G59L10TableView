//
//  ViewController.swift
//  G59L10TableView
//
//  Created by Ivan Vasilevich on 1/9/18.
//  Copyright © 2018 RockSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
	
	@IBOutlet weak var tableView: UITableView!
	
	var cars = [String]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		cars = ["e28", "e30", "e36"]
		tableView.dataSource = self
		tableView.backgroundColor = .blue
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return cars.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell()
		return cell
	}
	


}

