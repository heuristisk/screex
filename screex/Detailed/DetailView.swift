//
//  DetailView.swift
//  screex
//
//  Created by Anderson Gusmao on 12/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

class DetailView: UIView {

    fileprivate let margins: CGFloat = -50

    init(userName: String) {
        super.init(frame: CGRect.zero)
        let elements: [UIElement] = [
            .label("Hello \(userName)!"),
            ]

        backgroundColor = UIColor.white
        let stack = UIStackView(elements: elements)
        addSubview(stack)
        stack.constrainEqual(.width, to: self, constant: margins)
        stack.center(in: self)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
