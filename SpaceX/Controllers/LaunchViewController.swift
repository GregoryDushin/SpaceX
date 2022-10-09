//
//  LaunchViewController.swift
//  SpaceX
//
//  Created by Григорий Душин on 09.10.2022.
//

import UIKit

class LaunchViewController: UIViewController {

    @IBOutlet weak var LaunchCollectionView: UICollectionView!
    
    var launches: [LaunchModelElement] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        LaunchLoader().launchDataLoad { launches in
            self.launches = launches
            self.LaunchCollectionView.reloadData()
        }
        
    }
}

extension LaunchViewController : UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widthCell = UIScreen.main.bounds.width - 40
        
        return CGSize(width: widthCell, height: 100)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return launches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! CollectionViewCell
        
          cell.layer.masksToBounds = true
          cell.layer.cornerRadius = 12
        
        
        cell.rocketNameLable.text = launches[indexPath.row].name
        
        cell.dateOfLaunchLable.text  = launches[indexPath.row].date_utc
        
        if launches[indexPath.row].success == true {
            
            cell.isSucsessImage.image = UIImage(named: "true")
        } else {
            cell.isSucsessImage.image = UIImage(named: "false")
        }
        
        return cell
    }
    
   
    
}




