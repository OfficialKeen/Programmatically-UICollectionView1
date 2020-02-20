//
//  VerticalCell.swift
//  CollectionView01
//
//  Created by Keen on 19/02/20.
//  Copyright © 2020 iosapp. All rights reserved.
//

import UIKit

class VerticalCell: UICollectionViewCell {
    let photoImageView = UIImageView()    
    var arrayVertical: ArrayData? {
        didSet {
            guard let photo = arrayVertical?.image else { return }
            photoImageView.image = UIImage(named: photo)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        bindData()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}

extension VerticalCell {
    fileprivate func bindData() {
        setLibrary()
        setAnchor()
    }
}

extension VerticalCell {
    fileprivate func setLibrary() {
        photoImageView.setObject {_ in
            photoImageView.contentMode = .scaleAspectFill
            photoImageView.clipsToBounds = true
        }
    }
    
    fileprivate func setAnchor() {
        addSubview(photoImageView)
        photoImageView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
}
