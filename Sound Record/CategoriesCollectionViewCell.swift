//
//  CategoriesCollectionViewCell.swift
//  Sound Record
//
//  Created by Vladimir on 16/02/2020.
//  Copyright © 2020 myOrganization. All rights reserved.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let imageView: UIImageView = {
        let imageV = UIImageView()
        return imageV
    }()
    
    func setupViews() {
        self.layer.borderWidth = 2.0
        
        imageView.frame = self.bounds
        imageView.contentMode = .scaleAspectFill
        
        addSubview(imageView)
        
        imageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        titleLabel.font = UIFont(name: "AmericanTypewriter-Bold", size: 24.0)
        titleLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        addSubview(titleLabel)
        
        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
