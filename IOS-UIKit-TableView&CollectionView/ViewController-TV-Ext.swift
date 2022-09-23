//
//  ViewController-TV-Ext.swift
//  IOS-UIKit-TableView&CollectionView
//
//  Created by Islam Ahmed on 23/09/2022.
//  Email: Advansys.iahmed@gmail.com
//

import UIKit

extension ViewController {
    func setupTableView() {
        tv.registerNibCell(TVCell.self)
        tv.tableFooterView = UIView()
        tv.estimatedRowHeight = 100
        tv.rowHeight = 100
    }
}



extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tv.configure(TVCell.self, with: "User Index : \(indexPath.row)", for: indexPath)
    }
}


extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("User Index : \(indexPath.row)")
    }
}


