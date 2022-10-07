//
//  ViewController.swift
//  SpaceX
//
//  Created by Григорий Душин on 06.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Arrays for recieving data from parsing loaders
    
    var rockets: [RocketModelElement] = []
    var launches: [LaunchModelElement] = []
    

    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
    //MARK: Recieving data from parsing loaders through escaping clousers
        
        RocketLoader().rocketDataLoad { rockets in
            self.rockets = rockets
            print("test \(rockets.count)")
            
        }
        
        LaunchLoader().launchDataLoad { launches in
            self.launches = launches
            print("test \(launches.count)")
        }
        
    }
   
}

