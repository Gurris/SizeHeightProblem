//
//  CollectionViewCell.swift
//  Dashboard
//
//  Created by Gustaf Holmström on 2020-02-16.
//  Copyright © 2020 Waleed Hassan. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    var index: Int?
    
    @IBOutlet var tagView: UIView!
    @IBOutlet var tagViewHeightConstraint: NSLayoutConstraint!    
}


class GurraG: UITableViewCell {
    
    @IBOutlet var viewHeight: NSLayoutConstraint!
    
}
