//
//  SideMenuCell.swift
//  firebaseTest
//
//  Created by 이승준 on 2022/02/05.
//

import UIKit

class SideMenuCell: UITableViewCell {
    
    class var identifier: String { return String(describing: self) }
    class var nib: UINib { return UINib(nibName: identifier, bundle: nil) }
    
    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Background
        self.backgroundColor = .clear
        
//        아이콘 사용하려면 주석 제거
        self.iconImageView.tintColor = .white
        
        // Title
        self.titleLabel.textColor = .white
    }
}
