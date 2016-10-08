//
//  SearchResultsTableViewController.swift
//  MultiTestDemo
//
//  Created by Chrishon Wyllie on 10/4/16.
//  Copyright © 2016 Chrishon Wyllie. All rights reserved.
//

import UIKit

private let reuseIdentifer = "searchCell"

class SearchResultsTableViewController: UITableViewController {

    var searchResults: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.tableView!.register(UITableViewCell.self, forCellReuseIdentifier: reuseIdentifer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (searchResults?.count)!
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifer, for: indexPath) 
        // Configure the cell...
        cell.textLabel?.text = searchResults[indexPath.item]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "testSeg", sender: self)
    }
}
