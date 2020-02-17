//
//  ViewController.swift
//  Sound Record
//
//  Created by Vladimir on 16/02/2020.
//  Copyright © 2020 myOrganization. All rights reserved.
//

import UIKit

class CategoriesViewController: UICollectionViewController {
    
    var categories: [Category] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar
        .prefersLargeTitles = false
        title = "Categories"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addCategory))
        
        collectionView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        collectionView.register(CategoriesCollectionViewCell.self , forCellWithReuseIdentifier: CategoriesData.getCellId())
        
    }
    
    @objc func addCategory(_ sender: UIBarButtonItem)  {
        let alertController = UIAlertController(title: "New Category", message: "Type a title", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Create", style: .default) { (action) in
            let textField = alertController.textFields?.first
            guard self.categories.count < 4 else { return }
            self.categories.append(CategoriesData.getOneCategoryData(at: self.categories.count))
            self.categories[self.categories.count - 1].title = (textField?.text)!
            self.collectionView.reloadData()
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addTextField { (textField) in
            
        }
        alertController.addAction(ok)
        alertController.addAction(cancel)
        present(alertController, animated: true, completion: nil)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesData.getCellId(), for: indexPath) as! CategoriesCollectionViewCell
        cell.titleLabel.text = categories[indexPath.row].title
        cell.imageView.image = categories[indexPath.row].photo
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
