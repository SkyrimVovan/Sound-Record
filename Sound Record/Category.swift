//
//  Category.swift
//  Sound Record
//
//  Created by Vladimir Petrosiuk on 2/14/20.
//  Copyright © 2020 Vladimir Petrosiuk. All rights reserved.
//

import UIKit

struct Category {
    var title: String
    var photo: UIImage?

    init(title: String, photo: UIImage?) {
        self.title = title
        self.photo = photo
    }
}
