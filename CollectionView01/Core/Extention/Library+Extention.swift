//
//  Extention+Library.swift
//  CollectionView01
//
//  Created by Keen on 19/02/20.
//  Copyright © 2020 iosapp. All rights reserved.
//

import UIKit

extension UIImageView {
    func setObject(completion: (UIImageView) -> Void) {
        completion(self)
    }
}
