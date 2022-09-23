//
//  ExtensionCollectionView.swift
//  IOS-UIKit-TableView&CollectionView
//
//  Created by Islam Ahmed on 23/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

extension UICollectionView {
    
    func registerNibCell<T: SelfConfiguringCell>(_ cellType: T.Type) {
        let nibCell = UINib(nibName: cellType.reuseIdentifier, bundle: nil)
        self.register(nibCell, forCellWithReuseIdentifier: cellType.reuseIdentifier)
        
    }
    
    func configure<T: SelfConfiguringCell, datatype>(_ cellType: T.Type, with dataModel: datatype, for indexPath: IndexPath) -> T {
        guard let cell = self.dequeueReusableCell(withReuseIdentifier: cellType.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Unable to dequeue \(cellType)")
        }
        
        cell.configure(with: dataModel)
        return cell
    }
    
}
