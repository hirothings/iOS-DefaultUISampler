//
//  CollectionViewSampleViewController.swift
//  iOS-DefaultUISampler
//
//  Created by sakamoto.hiroshi on 2019/10/28.
//  Copyright © 2019 hirothings. All rights reserved.
//

import UIKit

class CollectionViewSampleViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let imageNames = [
        "image1",
        "image2",
        "image3",
        "image4",
        "image5",
        "image6",
        "image7",
        "image8",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(
            width: self.view.bounds.width / 2,
            height: self.view.bounds.height / 3
        )
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = 0
        flowLayout.scrollDirection = .vertical
            
        collectionView.collectionViewLayout = flowLayout
        collectionView.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
    }
}

extension CollectionViewSampleViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CustomCollectionViewCell
        item.imageView.image = UIImage(named: imageNames[indexPath.row])
        return item
    }
}
