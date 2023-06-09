//
//  CardView.swift
//  OnBoardingApp
//
//  Created by Mac on 20/04/22.
//

import Foundation
import UIKit
class CardView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetup()
    }
   required init?(coder: NSCoder){
        super.init(coder: coder)
        initialSetup()
    }
    private func initialSetup(){
        layer.shadowColor =  UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.1
        cornerRadius = 10
    }
}
