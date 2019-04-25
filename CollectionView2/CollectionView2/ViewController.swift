//
//  ViewController.swift
//  CollectionView2
//
//  Created by duycuong on 4/23/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

protocol ViewControllerDelegate: class {
    func delete(at indexPath: IndexPath)
}

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    var photoPicked: UIImage?
    var indexPath: IndexPath!
    
    weak var delegate: ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if photoPicked != nil {
            imageView.image = photoPicked
        }
    }
    
    @IBAction func DeletePhoto(_ sender: Any) {
        if indexPath != nil {
            delegate?.delete(at: indexPath)
        }
        navigationController?.popToRootViewController(animated: true)
    }
    
}
