//
//  MainViewCell.swift
//  MVC
//
//  Created by Fatih Doğan on 12.08.2024.
//

import UIKit

final class MainViewCell: UITableViewCell {
    
    @IBOutlet private weak var backgroundContainerView: UIView!
    @IBOutlet private weak var colorLabel: UILabel!
    
    func configureCell(color: ColorModel) {
        colorLabel.text = color.colorName
        backgroundContainerView.backgroundColor = UIColor(named: color.colorName)
    }
}
