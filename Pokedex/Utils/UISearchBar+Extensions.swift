//
//  UISearchBar.swift
//  Pokedex
//
//  Created by Lucas Inocencio on 02/03/20.
//  Copyright © 2020 Lucas Inocencio. All rights reserved.
//

import UIKit

extension UISearchBar {
    func getTextField() -> UITextField? { return value(forKey: "searchField") as? UITextField }
    func setTextField(color: UIColor) {
        guard let textField = getTextField() else { return }
        switch searchBarStyle {
        case .minimal:
            textField.layer.backgroundColor = color.cgColor
            textField.layer.cornerRadius = 6
        case .prominent, .default: textField.backgroundColor = color
        @unknown default: break
        }
    }
}
