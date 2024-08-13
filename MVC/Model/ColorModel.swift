//
//  ColorModel.swift
//  MVC
//
//  Created by Fatih Doğan on 12.08.2024.
//

import Foundation

@objc
class ColorModel: NSObject {
    let colorName: String
    init(colorName: String) {
        self.colorName = colorName
    }
}

var colorData: [ColorModel] = [
    .init(colorName: "Pink"),
    .init(colorName: "Purple"),
    .init(colorName: "Red"),
    .init(colorName: "Brown"),
    .init(colorName: "Green"),
    .init(colorName: "Blue"),
    .init(colorName: "Yellow"),
    .init(colorName: "Orange")
]
