//
//  String+Extension.swift
//  OnBoardingApp
//
//  Created by Mac on 30/03/23.
//

import Foundation
extension String{
    var asUrl : URL?{
        return URL(string: self)
    }
}
