//
//  UIInputText.swift
//  screex
//
//  Created by Anderson Gusmao on 11/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

final class InputText: UIView {

    private let onChange: (String?) -> ()

    fileprivate let separator: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    fileprivate let separatorLeftCorner: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    fileprivate let separatorRightCorner: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    fileprivate let input: UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    init(placeHolder: String, isSecure: Bool, onChange: @escaping (String?) -> ()) {
        self.onChange = onChange
        input.placeholder = placeHolder
        input.isSecureTextEntry = isSecure
        super.init(frame: .zero)
        input.addTarget(self, action: #selector(onTextChange), for: .editingChanged)
    }

    @objc private func onTextChange(sender: AnyObject) {
        onChange(input.text)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        if subviews.count == 0 {
            buildUI()
        }
    }

    fileprivate func buildUI() {
        addSubview(input)
        addSubview(separator)
        addSubview(separator)
        addSubview(separatorLeftCorner)
        addSubview(separatorRightCorner)
        separator.constrainEqual(.width, to: self)
        separator.constrainEqual(.bottom, to: self)
        separator.constrainEqual(.trailing, to: self)
        separator.constrainHeight(1)
        separatorLeftCorner.constrainWidth(1)
        separatorRightCorner.constrainWidth(1)
        separatorLeftCorner.constrainHeight(5)
        separatorRightCorner.constrainHeight(5)
        separatorLeftCorner.constrainEqual(.bottom, to: self)
        separatorLeftCorner.constrainEqual(.trailing, to: self)
        separatorRightCorner.constrainEqual(.bottom, to: self)
        separatorRightCorner.constrainEqual(.leading, to: self)
        input.constrainEdges(to: self, margin: 3)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

