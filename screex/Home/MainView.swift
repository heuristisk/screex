//
//  MainView.swift
//  screex
//
//  Created by Anderson Gusmao on 12/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

class MainView: UIView {

    fileprivate let margins: CGFloat = -50
    fileprivate var userName: String?
    fileprivate var password: String?
    private let onDidPressLogin: (String?, String?) -> ()

    init(onDidPressLogin: @escaping (String?, String?) -> ()) {
        self.onDidPressLogin = onDidPressLogin
        super.init(frame: UIScreen.main.bounds)
        let elements: [UIElement] = [
            .label("Type your credential to access:"),
            .input("username", false) { [weak self] in self?.userName = $0},
            .input("password", true) { [weak self] in self?.password = $0},
            .button("Login") { [weak self] in
                self?.endEditing(true)
                self?.onDidPressLogin(self?.userName, self?.password)
            }
        ]

        self.backgroundColor = UIColor.white

        let stack = UIStackView(elements: elements)
        addSubview(stack)
        stack.constrainEqual(.width, to: self, constant: margins)
        stack.center(in: self)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
