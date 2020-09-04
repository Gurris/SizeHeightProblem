//
//  TableViewCell.swift
//  Dashboard
//
//  Created by Gustaf Holmström on 2020-08-23.
//  Copyright © 2020 Waleed Hassan. All rights reserved.
//

import UIKit


protocol CollectionViewCellDelegate: class {
    func collectionView(collectionviewcell: CustomCollectionViewCell?, index: Int, didTappedInTableViewCell: CustomTableViewCell)
    // other delegate methods that you can define to perform action in viewcontroller
}

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var collectionView: UICollectionView!
    var cellData: testDataViewModel?
    weak var cellDelegate: CollectionViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let layout = UICollectionViewCenterLayout() //UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = CGSize(width: 140, height: 40)
        //layout.minimumLineSpacing = 2.0
        //layout.minimumInteritemSpacing = 5.0
        self.collectionView.collectionViewLayout = layout
        self.collectionView?.allowsMultipleSelection = true
        
        
        // Comment if you set Datasource and delegate in .xib
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        // Register the xib for collection view cell
        let cellNib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        self.collectionView.register(cellNib, forCellWithReuseIdentifier: "collectionviewcellid")
        
        
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}


extension CustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func updateCellWith(timeblock: testDataViewModel) {
        self.cellData = timeblock
        self.collectionView.reloadData()
        self.layoutIfNeeded()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.cellData?.tags.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionviewcellid", for: indexPath) as? CustomCollectionViewCell{
            
            cell.tagName.text = self.cellData?.tags[indexPath.item].cellText
            
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as? CustomCollectionViewCell
        self.cellDelegate?.collectionView(collectionviewcell: cell, index: indexPath.item, didTappedInTableViewCell: self)
    }
    
    // Add spaces at the beginning and the end of the collection view
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
}

