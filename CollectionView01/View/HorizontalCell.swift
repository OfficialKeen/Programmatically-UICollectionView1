//
//  HorizontalCell.swift
//  CollectionView01
//
//  Created by Keen on 19/02/20.
//  Copyright © 2020 iosapp. All rights reserved.
//

import UIKit

class HorizontalCell: UICollectionViewCell {
    var collectionView: UICollectionView!
    let childCell = "childCell"
    
    let arrayData = [ArrayData(image: "pict1"),
                         ArrayData(image: "pict2"),
                         ArrayData(image: "pict3"),
                         ArrayData(image: "pict4"),
                         ArrayData(image: "pict5"),
                         ArrayData(image: "pict6"),
                         ArrayData(image: "pict7"),
                         ArrayData(image: "pict8"),
                         ArrayData(image: "pict1"),
                         ArrayData(image: "pict2"),
                         ArrayData(image: "pict3"),
                         ArrayData(image: "pict4"),
                         ArrayData(image: "pict5"),
                         ArrayData(image: "pict6"),
                         ArrayData(image: "pict7"),
                         ArrayData(image: "pict8")]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        bindData()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

extension HorizontalCell {
    fileprivate func bindData() {
        setCollectionView()
        setRegister()
        setAnchor()
    }
}

extension HorizontalCell {
    fileprivate func setCollectionView() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
    }
    
    fileprivate func setRegister() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ChildHorizontalCell.self, forCellWithReuseIdentifier: childCell)
    }
    
    fileprivate func setAnchor() {
        addSubview(collectionView)
        collectionView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
}

extension HorizontalCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: childCell, for: indexPath) as! ChildHorizontalCell
        cell.arrayVertical = arrayData[indexPath.row]
        return cell
    }
}

extension HorizontalCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.height - 25, height: frame.height - 5)
    }
}
