//
//  ViewController.swift
//  CollectionView01
//
//  Created by Keen on 19/02/20.
//  Copyright © 2020 iosapp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let horizontalCellId = "horizontalCellId"
    let verticalCellId = "verticalCellId"
    var collectionView: UICollectionView!
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindData()
    }
}


