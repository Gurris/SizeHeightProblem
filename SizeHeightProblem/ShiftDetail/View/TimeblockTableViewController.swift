//
//  TimeblockTableViewController.swift
//  Dashboard
//
//  Created by Gustaf Holmström on 2020-01-15.
//  Copyright © 2020 Waleed Hassan. All rights reserved.
//

import UIKit

class TimeblockTableViewController: UITableViewController {
    
    var maxHeight: CGFloat = UIScreen.main.bounds.size.height
    
    public var workshift: CalendarWorkshiftViewModel? {
        didSet {
            print("data is received")
            self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 30

    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let timeblock = workshift?.timeblocks else {
            return 0
        }
        return timeblock.count
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }

}
