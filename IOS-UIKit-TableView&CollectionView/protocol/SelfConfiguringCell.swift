//
//  SelfConfiguringCell.swift
//  IOS-UIKit-TableView&CollectionView
//
//  Created by Islam Ahmed on 23/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import Foundation

protocol SelfConfiguringCell {
    func configure<T>(with data: T)
}


extension SelfConfiguringCell{
    static var reuseIdentifier : String {
        String(describing: self)
    }
}
