//
//  ShiftDetailViewController.swift
//  Dashboard
//
//  Created by Gustaf Holmström on 2019-07-17.
//  Copyright (c) 2019 Waleed Hassan. All rights reserved.
import UIKit
import MapKit


class ShiftDetailViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var foobar = testData()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let cellNib = UINib(nibName: "ShiftDetailTableViewCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: "tableviewcellid")
        
        print("-----------start-----------")
        
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = UITableView.automaticDimension
        
        let footerView = UIView()
        footerView.backgroundColor = #colorLiteral(red: 0.2392156863, green: 0.3098039216, blue: 0.3725490196, alpha: 1)
        self.tableView.tableFooterView = footerView
    }
    
    @IBAction func dismissView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}



extension ShiftDetailViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foobar.objectArray.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "tableviewcellid") as? ShiftDetailTableViewCell {
            
            // Pass the data to colletionview inside the tableviewcell
            
            let timeblock = foobar.objectArray[indexPath.row]
            cell.updateCellWith(timeblock: timeblock)
                      
            // Set cell's delegate
            cell.cellDelegate = self
            
            return cell
        }

        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}

extension ShiftDetailViewController: CollectionViewCellDelegate {
    func collectionView(collectionviewcell: ShiftDetailCollectionViewCell?, index: Int, didTappedInTableViewCell: ShiftDetailTableViewCell) {
        if let timeblock = didTappedInTableViewCell.timeblock {
            print("You tapped the cell \(index) tag: \(timeblock.tags[index].tagName)")
            // You can also do changes to the cell you tapped using the 'collectionviewcell'
        }
    }
}

