//
//  CollectionViewCellTest.swift
//  Dashboard
//
//  Created by Gustaf Holmström on 2020-08-23.
//  Copyright © 2020 Waleed Hassan. All rights reserved.
//

import UIKit

class ShiftDetailCollectionViewCell: UICollectionViewCell {

    @IBOutlet var colorView: UIView!
    @IBOutlet var tagName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.layer.cornerRadius = 10
        self.isSelected = false
    }
    
    override var isSelected: Bool{
        didSet{
            if self.isSelected
            {
                colorView.backgroundColor = UIColor(red:0.24, green:0.31, blue:0.37, alpha:1.0)
                tagName.textColor = .white
            }
            else
            {
                colorView.backgroundColor = .white
                tagName.textColor = UIColor(red:0.24, green:0.31, blue:0.37, alpha:1.0)
            }
        }
    }

}
