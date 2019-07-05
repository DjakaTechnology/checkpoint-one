//
//  MenuListDetail.swift
//  CheckpointOne
//
//  Created by Djaka Pradana on 26/06/19.
//  Copyright © 2019 Djaka Pradana. All rights reserved.
//

import UIKit

class MenuListDetail: UITableViewController {
    private let idCell = "idCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: idCell)
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idCell, for: indexPath)
        
        let lbTitle = UILabel()
        lbTitle.text = "Title \(indexPath.row)"
        lbTitle.translatesAutoresizingMaskIntoConstraints = false
        lbTitle.font = UIFont.boldSystemFont(ofSize: 18)
        
        let lbDesc = UILabel()
        lbDesc.text = "Description \(indexPath.row)"
        lbDesc.translatesAutoresizingMaskIntoConstraints = false
        lbDesc.textColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 00.5)
        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "img_placeholder")
        
        cell.addSubview(lbTitle)
        cell.addSubview(lbDesc)
        cell.addSubview(image)
        
        NSLayoutConstraint.activate([
            image.leftAnchor.constraint(equalTo: cell.leftAnchor),
            image.widthAnchor.constraint(equalToConstant: 120),
            image.heightAnchor.constraint(equalToConstant: 120),
            image.bottomAnchor.constraint(equalTo: cell.bottomAnchor, constant: -8),
            image.topAnchor.constraint(equalTo: cell.topAnchor, constant: 8),
            lbTitle.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 4),
            lbTitle.topAnchor.constraint(equalTo: image.topAnchor, constant: 12),
            lbDesc.leftAnchor.constraint(equalTo: image.rightAnchor, constant: 4),
            lbDesc.topAnchor.constraint(equalTo: lbTitle.bottomAnchor, constant: 12),
        ])
        
        return cell
    }
    
}
