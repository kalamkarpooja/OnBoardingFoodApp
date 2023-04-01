//
//  HomeViewController.swift
//  OnBoardingApp
//
//  Created by Mac on 30/03/23.
//

import UIKit

class HomeViewController: UIViewController {
    var categories = ["Noodles","Momos","Punjabi Samosa","Cutlet","Chicken Tikka"]
    var cImages = ["noodles","momos","punjabi Samosa","potato Cutlets","chicken tikka"]
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
      registerCells()
    }
    private func registerCells(){
        let uinib = UINib(nibName: "CategoryCollectionViewCell", bundle: nil)
        categoryCollectionView.register(uinib, forCellWithReuseIdentifier: "CategoryCollectionViewCell")
    }
}
extension HomeViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        cImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
        

       return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 50)
    }
}
