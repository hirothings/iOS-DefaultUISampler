//
//  SearchBarSampleViewController.swift
//  iOS-DefaultUISampler
//
//  Created by sakamoto.hiroshi on 2019/10/28.
//  Copyright © 2019 hirothings. All rights reserved.
//

import UIKit

class SearchBarSampleViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    private let fruits = [
        "Mango",
        "Banana",
        "Guava",
        "Apple",
        "Citrus",
        "Papaya",
        "Grapes",
        "Muscat",
    ]
    
    private lazy var filterdFruits: [String] = self.fruits
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        searchBar.delegate = self
    }
}

extension SearchBarSampleViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            filterdFruits = fruits
            tableView.reloadData()
            return
        }
        filterdFruits = fruits.filter {
            $0.lowercased().contains(searchText.lowercased())
        }
        tableView.reloadData()
    }
}

extension SearchBarSampleViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterdFruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath)
        cell.textLabel?.text = filterdFruits[indexPath.row]
        return cell
    }
}
