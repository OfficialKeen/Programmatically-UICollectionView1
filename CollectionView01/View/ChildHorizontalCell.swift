//
//  ChildHorizontalCell.swift
//  CollectionView01
//
//  Created by Keen on 19/02/20.
//  Copyright © 2020 iosapp. All rights reserved.
//

import UIKit

class ChildHorizontalCell: UICollectionViewCell {
    let imageView = UIImageView()
    var arrayVertical: ArrayData? {
        didSet {
            guard let photo = arrayVertical?.image else { return }
            imageView.image = UIImage(named: photo)
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

extension ChildHorizontalCell {
    fileprivate func bindData() {
        setLibrary()
        setAnchor()
    }
    
    fileprivate func setLibrary() {
        imageView.setObject {_ in
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.layer.cornerRadius = 40
        }
    }
    
    fileprivate func setAnchor() {
        addSubview(imageView)
        imageView.setAnchor(top: topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 8, paddingLeft: 5, paddingBottom: 0, paddingRight: 0, width: 80, height: 80)
    }
}
