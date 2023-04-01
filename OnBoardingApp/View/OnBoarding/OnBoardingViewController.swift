//
//  OnBoardingViewController.swift
//  OnBoardingApp
//
//  Created by Mac on 29/03/23.
//

import UIKit

class OnBoardingViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides : [OnBoardingSlide] = []
    var currentPage = 0 {
        didSet{
            pageControl.currentPage = currentPage

            if currentPage == slides.count - 1{
                nextBtn.setTitle("Get Started", for: .normal)
                
            }else{
                nextBtn.setTitle("Next", for: .normal)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        slides = [OnBoardingSlide(title: "Delicious Dishes", description: "experience a veriety of amazing dishes", image: "delocious food"),
         OnBoardingSlide(title: "World class Chefs", description: "our dishes are prepared by only best cook", image: "chef 1"),
        OnBoardingSlide(title: "instant world wide services", description: "your orders will be delivered instantly", image: "food delivery")
        ]
        pageControl.numberOfPages = slides.count
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        if currentPage == slides.count - 1{
            let controller = storyboard?.instantiateViewController(withIdentifier: "HomeVC") as? UIViewController
            
            controller!.modalPresentationStyle = .fullScreen
            controller!.modalTransitionStyle = .flipHorizontal
            
            present(controller!, animated: true,completion: nil)
        }else{
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
    
}
extension OnBoardingViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OnBoardingCollectionViewCell", for: indexPath) as! OnBoardingCollectionViewCell
        cell.setup(slide: slides[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
    }
}
