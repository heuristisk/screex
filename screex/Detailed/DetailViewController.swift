//
//  DetailViewController.swift
//  screex
//
//  Created by Anderson Gusmao on 12/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    init(userName: String) {
        super.init(nibName: nil, bundle: nil)
        view = DetailView(userName: userName)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
