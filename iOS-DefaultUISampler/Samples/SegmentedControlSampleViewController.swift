//
//  SegmentedControlSampleViewController.swift
//  iOS-DefaultUISampler
//
//  Created by sakamoto.hiroshi on 2019/10/28.
//  Copyright © 2019 hirothings. All rights reserved.
//

import UIKit

class SegmentedControlSampleViewController: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        segmentedControl.addTarget(self, action: #selector(updateBackgroundColor(_:)), for: .valueChanged)
    }
    
    @objc private func updateBackgroundColor(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            self.view.backgroundColor = .systemBlue
        } else if sender.selectedSegmentIndex == 1 {
            self.view.backgroundColor = .systemRed
        }
    }
}
