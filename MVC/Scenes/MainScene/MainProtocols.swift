//
//  MainProtocols.swift
//  MVC
//
//  Created by Fatih Doğan on 12.08.2024.
//

import Foundation

@objc
protocol MainViewControllerDelegate: AnyObject {
    func didSelectColor(for color: ColorModel)
}

@objc
protocol MainViewProtocol: AnyObject {
    var delegate: MainViewControllerDelegate? { get set }
    func updateView(for colors: [ColorModel])
}
