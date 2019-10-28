//
//  IndicatorSampleViewController.swift
//  iOS-DefaultUISampler
//
//  Created by sakamoto.hiroshi on 2019/10/28.
//  Copyright © 2019 hirothings. All rights reserved.
//

import UIKit

class IndicatorSampleViewController: UIViewController {
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var animationControlSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicatorView.startAnimating()
        animationControlSwitch.addTarget(self, action: #selector(toggleAnimation(_ :)), for: .valueChanged)
    }

    @objc private func toggleAnimation(_ sender: UISwitch) {
        if sender.isOn {
            activityIndicatorView.startAnimating()
        } else {
            activityIndicatorView.stopAnimating()
        }
    }
}
