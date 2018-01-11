//
//  ViewController.swift
//  G59L10TableView
//
//  Created by Ivan Vasilevich on 1/9/18.
//  Copyright © 2018 RockSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	@IBOutlet weak var tableView: UITableView!
	
	var cars = [String]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		cars = ["e28", "e30", "e36", "e28", "e30", "e36", "e28", "e30", "e36", "e28", "e30", "e36"]
		let nib = UINib(nibName: "MeasumentsTVCell", bundle: nil)
		tableView.register(nib, forCellReuseIdentifier: "MeasumentsTVCell")
		tableView.dataSource = self
		tableView.delegate = self
//		tableView.backgroundColor = .blue
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let cell = (sender as! UITableViewCell)
		let index = tableView.indexPath(for: cell)!.row
		let selectedCar = cars[index]
		segue.destination.title = selectedCar
		
	}
	
	// MARK: - UITableViewDataSource
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return cars.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "MeasumentsTVCell", for: indexPath) as! MeasumentsTVCell
		cell.daysLabel?.text = cars[indexPath.row]
		cell.imageBox.backgroundColor = UIColor(red: CGFloat(arc4random_uniform(256))/255,
												green: CGFloat(arc4random_uniform(256))/255,
												blue: CGFloat(arc4random_uniform(256))/255,
												alpha: 1)
		print(indexPath)
		return cell
	}
	
	// MARK: - UITableViewDelegate
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		print(indexPath)
		tableView.deselectRow(at: indexPath, animated: true)
//		performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
	}
	
	
}

