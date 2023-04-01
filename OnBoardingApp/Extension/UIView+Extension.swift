//
//  UIView+Extension.swift
//  OnBoardingApp
//
//  Created by Mac on 29/03/23.
//

import Foundation
import UIKit
extension UIView{
   @IBInspectable var cornerRadius: CGFloat{
        get { return cornerRadius}
       set{
           self.layer.cornerRadius = newValue
       }
    }
}
