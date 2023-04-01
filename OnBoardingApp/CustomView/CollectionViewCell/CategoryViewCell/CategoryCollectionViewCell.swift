//
//  CategoryCollectionViewCell.swift
//  OnBoardingApp
//
//  Created by Mac on 30/03/23.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    func setup(category: DishCategory){
        categoryImage.image = UIImage(named: category.image)
    
    }
}
