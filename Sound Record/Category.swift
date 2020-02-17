//
//  Category.swift
//  Sound Record
//
//  Created by Vladimir on 16/02/2020.
//  Copyright © 2020 myOrganization. All rights reserved.
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
