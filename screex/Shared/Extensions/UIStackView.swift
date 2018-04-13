//
//  UIStackView.swift
//  screex
//
//  Created by Anderson Gusmao on 11/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

extension UIStackView {
    convenience init(elements: [UIElement]) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
        axis = .vertical
        spacing = 20

        for element in elements {
            addArrangedSubview(element.view)
        }
    }
}
