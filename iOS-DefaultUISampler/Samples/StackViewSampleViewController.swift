//
//  StackViewSampleViewController.swift
//  iOS-DefaultUISampler
//
//  Created by sakamoto.hiroshi on 2019/10/28.
//  Copyright © 2019 hirothings. All rights reserved.
//

import UIKit

class StackViewSampleViewController: UIViewController {
    @IBOutlet weak var centerRowView: UIView!
    @IBOutlet weak var hideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hideButton.addTarget(self, action: #selector(hideCenterRow), for: .touchUpInside)
    }
    
    @objc private func hideCenterRow() {
        centerRowView.isHidden = true
    }
}
