//
//  OnBoardingCollectionViewCell.swift
//  OnBoardingApp
//
//  Created by Mac on 29/03/23.
//

import UIKit

class OnBoardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var slideDecription: UILabel!
    @IBOutlet weak var slideTitle: UILabel!
    @IBOutlet weak var slideImageView: UIImageView!
    
    
    func setup(slide: OnBoardingSlide){
        slideImageView.image = UIImage(named: slide.image)
        slideTitle.text = slide.title
        slideDecription.text = slide.description
    }
}
