//
//  UIView.swift
//  screex
//
//  Created by Anderson Gusmao on 11/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

extension UIView {

    func constrainEqual(_ attribute: NSLayoutAttribute, to: AnyObject, multiplier: CGFloat = 1, constant: CGFloat = 0) {
        constrainEqual(attribute: attribute, to: to, attribute, multiplier: multiplier, constant: constant)
    }

    func constrainHeight(_ size: CGFloat) {
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: size))
    }

    func constrainWidth(_ size: CGFloat) {
        self.addConstraint(NSLayoutConstraint(item: self, attribute: .width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: size))
    }

    func constrainEqual(attribute: NSLayoutAttribute, to: AnyObject, _ toAttribute: NSLayoutAttribute, multiplier: CGFloat = 1, constant: CGFloat = 0) {
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: self, attribute: attribute, relatedBy: .equal, toItem: to, attribute: toAttribute, multiplier: multiplier, constant: constant)
            ])
    }

    func constrainEdges(to view: UIView, margin: CGFloat = 0) {
        constrainEqual(attribute: .top, to: view, .top, constant: margin)
        constrainEqual(attribute: .leading, to: view, .leading, constant: margin)
        constrainEqual(attribute: .trailing, to: view, .trailing, constant: margin * -1)
        constrainEqual(attribute: .bottom, to: view, .bottom, constant: margin * -1)
    }

    func center(in view: UIView) {
        centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
    }
}
