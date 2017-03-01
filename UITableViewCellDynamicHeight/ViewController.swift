//
//  ViewController.swift
//  UITableViewCellDynamicHeight
//
//  Created by Yanzi Li on 3/2/17.
//  Copyright © 2017 Yanzi Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  let data = ["1","2222222222","33333333333333333333333333333333333333333333333333333333333333333333333"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.rowHeight = UITableViewAutomaticDimension
    tableView.estimatedRowHeight = 140
  }
}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell", for: indexPath) as! CustomTableViewCell
    cell.label.text = data[indexPath.row]
    return cell
  }
}

