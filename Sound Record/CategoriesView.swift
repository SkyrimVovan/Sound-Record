//
//  File.swift
//  Sound Record
//
//  Created by Vladimir on 15/02/2020.
//  Copyright © 2020 Vladimir Petrosiuk. All rights reserved.
//

import UIKit

extension CategoriesViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoryCollectionViewCell
        cell.titleLabel.text = categories[indexPath.row].title
        cell.titleLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        cell.titleLabel.font = UIFont(name: "AmericanTypewriter-Bold", size: 24.0)
        cell.imageView.image = categories[indexPath.row].photo
        cell.imageView.contentMode = .scaleAspectFill
        
        return cell
    }
}

extension CategoriesViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 16.0, left: 16.0, bottom: 16.0, right: 16.0)
    }
}
