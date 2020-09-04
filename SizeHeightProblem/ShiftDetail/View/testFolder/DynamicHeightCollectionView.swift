//
//  DynamicHeightCollectionView.swift
//  Dashboard
//
//  Created by Gustaf Holmström on 2020-08-25.
//  Copyright © 2020 Waleed Hassan. All rights reserved.
//

import UIKit

class DynamicHeightCollectionView: UICollectionView {

    override func layoutSubviews() {
        super.layoutSubviews()
        if !__CGSizeEqualToSize(bounds.size, self.intrinsicContentSize){
            self.invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize{
        return contentSize
    }

}
