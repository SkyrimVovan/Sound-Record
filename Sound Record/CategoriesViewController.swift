//
//  ViewController.swift
//  Sound Record
//
//  Created by Vladimir Petrosiuk on 2/14/20.
//  Copyright © 2020 Vladimir Petrosiuk. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {
    
    var categories: [Category] = []
    var photos: [UIImage] = [UIImage.init(named: "dastarhan")!,UIImage.init(named: "bochka")!,UIImage.init(named: "balkan")!,UIImage.init(named: "indokitay")!]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Categories"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addCategory))
        
    }
    
    @objc func addCategory(_ sender: UIBarButtonItem)  {
        let alertController = UIAlertController(title: "New Category", message: "Type a title", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Create", style: .default) { (action) in
            let textField = alertController.textFields?[0]
            guard self.categories.count < 4 else { return }
            self.categories.append(Category(title: (textField?.text)!, photo: self.photos[self.categories.count]))
            self.collectionView.reloadData()
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addTextField { (textField) in
            
        }
        alertController.addAction(ok)
        alertController.addAction(cancel)
        present(alertController, animated: true, completion: nil)
    }


}

extension CategoriesViewController: UICollectionViewDelegate {}



