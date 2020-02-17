//
//  CategoriesData.swift
//  Sound Record
//
//  Created by Vladimir on 17/02/2020.
//  Copyright © 2020 myOrganization. All rights reserved.
//

import Foundation
import UIKit

class CategoriesData {
    static func getOneCategoryData(at index: Int) -> Category {
        var arrayData = [Category]()
        arrayData = [
            Category(title: "", photo: UIImage.init(named: "dastarhan")!),
            Category(title: "", photo: UIImage.init(named: "bochka")!),
        Category(title: "", photo: UIImage.init(named: "balkan")!),
        Category(title: "", photo: UIImage.init(named: "balkan")!)]
        
        return arrayData[index]
    }
    
    static func getCellId() -> String {
        let cellId = "cell"
        return cellId
    }
}

