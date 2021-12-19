//
//  ViewController.swift
//  ImageAutoResize
//
//  Created by Menaim on 15/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagesCollectionView: UICollectionView!
    
    
    let imagesArr = [UIImage(named: "Animes"),UIImage(named: "L"),UIImage(named: "Demon"), UIImage(named: "medorya") , UIImage(named: "Naruto") , UIImage(named: "Sasuke") , UIImage(named: "tall") , UIImage(named: "Tokyo")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

//MARK: - CollectionView

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = imagesCollectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath) as! ImageCell
        cell.imageViewOutlet.image = imagesArr[indexPath.item]
        cell.constraintHeightOutlet.constant = imagesArr[indexPath.item]!.size.height
        
        cell.constraintWidthOutlet.constant = imagesArr[indexPath.item]!.size.width
        return cell
    }
    
    
}
