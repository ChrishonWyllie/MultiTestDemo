//
//  SearchResults2TableViewController.swift
//  MultiTestDemo
//
//  Created by Chrishon Wyllie on 10/6/16.
//  Copyright © 2016 Chrishon Wyllie. All rights reserved.
//

import UIKit

private let reuseIdentifer = "testResultCell"

class SearchResults2TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var searchResults: [String]!

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 24
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: reuseIdentifer, for: indexPath)
        // Configure the cell...
        //cell.textLabel?.text = searchResults[indexPath.item]
        return cell
    }
    
}
