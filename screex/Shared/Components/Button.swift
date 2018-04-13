//
//  Button.swift
//  screex
//
//  Created by Anderson Gusmao on 12/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

final class Button: UIView {
    private let onTap: () -> ()
    private let button: UIButton = {
        let view = UIButton()
        view.backgroundColor = UIColor.black
        view.setTitleColor(UIColor.white, for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    init(title: String, onTap: @escaping () -> ()) {
        self.onTap = onTap
        super.init(frame: .zero)
        button.setTitle(title, for: .normal)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        if subviews.count == 0 {
            buildUI()
        }
    }

    fileprivate func buildUI() {
        addSubview(button)
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        button.constrainEdges(to: self)
        button.constrainHeight(50)
        button.layer.cornerRadius = 25
        button.clipsToBounds = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc private func tapped(sender: AnyObject) {
        onTap()
    }
}
