//
//  ExtensionView.swift
//  IOS-UIKit-TableView&CollectionView
//
//  Created by Islam Ahmed on 23/09/2022.
//  Email: Advansys.iahmed@gmail.com
//


import UIKit


extension UIView{
    

    func viewShadow()
    {
        self.layer.borderWidth = 1
        self.layer.borderColor = #colorLiteral(red: 0.6, green: 0.6, blue: 0.6, alpha: 0.5)
        self.layer.shadowRadius = 1
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSize(width: -0.5, height: 0.5)
        self.layer.cornerRadius = 10
        self.layer.shadowColor = #colorLiteral(red: 0.6, green: 0.6, blue: 0.6, alpha: 1)
    }

    
}
