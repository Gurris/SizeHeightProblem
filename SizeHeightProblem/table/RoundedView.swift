//
//  RoundedView.swift
//  SizeHeightProblem
//
//  Created by Gustaf Holmström on 2020-09-04.
//  Copyright © 2020 Gustaf Holmström. All rights reserved.
//

import Foundation
import UIKit

protocol Roundable {
    var isCircle: Bool { get set }
    var cornerRadius: CGFloat { get set }
    var borderWidth: CGFloat { get set }
    var borderColor: UIColor { get set }
}

extension Roundable where Self: UIView {
    func setupLayer() {
        clipsToBounds = true

        if isCircle {
            layer.cornerRadius = frame.width < frame.height ? frame.width / 2 : frame.height / 2
        } else {
            layer.cornerRadius = cornerRadius
        }

        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
    }
}

@IBDesignable
class RoundedView: UIView, Roundable {
    @IBInspectable var isCircle: Bool = false {
        didSet {
            setupLayer()
        }
    }

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            setupLayer()
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            setupLayer()
        }
    }

    @IBInspectable var borderColor: UIColor = .clear {
        didSet {
            setupLayer()
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        setupLayer()
    }
}
