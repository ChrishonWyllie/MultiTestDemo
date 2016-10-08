//
//  NewSearchResultsTableViewController.swift
//  MultiTestDemo
//
//  Created by Chrishon Wyllie on 10/6/16.
//  Copyright © 2016 Chrishon Wyllie. All rights reserved.
//

import UIKit

class NewSearchResultsTableViewController: UITableViewController {

    var segmentControlHeaderView: TableHeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "newResultCell")
        
        //self.segmentControlHeaderView = tableView.tableHeaderView as! TableHeaderView! //as! TableHeaderView
        //tableView.tableHeaderView = nil
        //self.tableView.addSubview(self.segmentControlHeaderView)
        
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
        return 24
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newResultCell", for: indexPath)
        cell.textLabel?.text = "test!"
        return cell
    }
}
