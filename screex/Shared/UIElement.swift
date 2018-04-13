//
//  UIElement.swift
//  screex
//
//  Created by Anderson Gusmao on 11/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

enum UIElement {
    case label(String)
    case button(String, () -> ())
    case image(UIImage)
    case input(String, Bool, (String?) -> ())
}

extension UIElement {

    var view: UIView {
        switch self {
        case .label(let text):
            let label = UILabel()
            label.numberOfLines = 0
            label.textAlignment = .center
            label.text = text
            return label
        case .button(let title, let callback):
            let button = Button(title: title, onTap: callback)
            return button
        case .image(let image):
            return UIImageView(image: image)
        case .input(let placeHolder, let isSecure, let callback):
            let input = InputText(placeHolder: placeHolder, isSecure: isSecure, onChange: callback)
            return input
        }
    }
}
