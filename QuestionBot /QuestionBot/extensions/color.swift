//
//  color.swift
//  QuestionBot
//
//  Created by iOS Lab 05 on 08/05/24.
//  Copyright © 2024 Apple Inc. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    func gradient(colorOne: UIColor, colorTwo: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [ 0.4, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)

        layer.insertSublayer(gradientLayer, at: 0)
    }
}
