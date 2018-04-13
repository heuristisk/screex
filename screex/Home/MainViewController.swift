//
//  ViewController.swift
//  screex
//
//  Created by Anderson Gusmao on 11/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
        self.view = MainView(onDidPressLogin: { [weak self] (userName, password) in
            self?.navigationController?.pushViewController(DetailViewController(userName: userName ?? ""), animated: true)
        })
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

