//
//  ViewController.swift
//  IOS-UIKit-TableView&CollectionView
//
//  Created by Islam Ahmed on 23/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cv: UICollectionView!
    @IBOutlet weak var tv: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewsLayout()
    }


}


extension ViewController {
    func setupViewsLayout() {
        setupTableView()
        setupCollectionView()
    }
    
}
