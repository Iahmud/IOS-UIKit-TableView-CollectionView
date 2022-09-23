//
//  CVCell.swift
//  IOS-UIKit-TableView&CollectionView
//
//  Created by Islam Ahmed on 23/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class CVCell: UICollectionViewCell {
    
    @IBOutlet weak var viewBG: UIView!
    @IBOutlet weak var labName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCellView()
    }
    
    func setupCellView()
    {
        viewBG.viewShadow()
        labName.textColor = .white
    }
    
}


extension CVCell : SelfConfiguringCell{
    func configure<T>(with data: T) {
        guard let recveddata:String = data as? String else {return}
        setupCellView()
        labName.text = recveddata
    }
}
