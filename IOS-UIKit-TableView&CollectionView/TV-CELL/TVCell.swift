//
//  TVCell.swift
//  IOS-UIKit-TableView&CollectionView
//
//  Created by Islam Ahmed on 23/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

class TVCell: UITableViewCell {

    @IBOutlet weak var viewBG: UIView!
    @IBOutlet weak var labName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCellView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCellView()
     {
         viewBG.viewShadow()
         labName.textColor = .white
     }

    
    
}


extension TVCell : SelfConfiguringCell{
    func configure<T>(with data: T) {
        guard let recveddata:String = data as? String else {return}
        setupCellView()
        labName.text = recveddata
    }
}

