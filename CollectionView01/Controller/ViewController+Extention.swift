//
//  TestViewController.swift
//  CollectionView01
//
//  Created by Keen on 20/02/20.
//  Copyright © 2020 iosapp. All rights reserved.
//

import UIKit

extension ViewController {
    func bindData() {
        setNav()
        setCollectionView()
        setRegister()
        setAnchor()
    }
}

extension ViewController {
    fileprivate func setNav() {
        title = "Animals"
        view.backgroundColor = .white
    }

    fileprivate func setCollectionView() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
    }
    
    fileprivate func setRegister() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(HorizontalCell.self, forCellWithReuseIdentifier: horizontalCellId)
        collectionView.register(VerticalCell.self, forCellWithReuseIdentifier: verticalCellId)
    }
    
    fileprivate func setAnchor() {
        view.addSubview(collectionView)
        collectionView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 1 {
            return arrayData.count
        }
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: verticalCellId, for: indexPath) as! VerticalCell
            cell.arrayVertical = arrayData[indexPath.row]
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: horizontalCellId, for: indexPath) as! HorizontalCell
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 1 {
            let layout = collectionViewLayout as! UICollectionViewFlowLayout
            layout.minimumLineSpacing = 1.0
            layout.minimumInteritemSpacing = 1.0
            
            let numberRows: CGFloat = 2.0
            let itemWidht = (collectionView.bounds.width - layout.minimumLineSpacing) / numberRows
            return CGSize(width: itemWidht, height: itemWidht)
        }
        return CGSize(width: view.frame.width, height: 100)
    }
}
