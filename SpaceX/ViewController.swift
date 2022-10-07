//
//  ViewController.swift
//  SpaceX
//
//  Created by Григорий Душин on 06.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var rockets: [RocketModelElement] = []
    var launches: [LaunchModelElement] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RocketLoader().rocketDataLoad { rockets in
            self.rockets = rockets
            print(rockets.count)
            
        }
        
        LaunchLoader().launchDataLoad { launches in
            self.launches = launches
            print(launches.count)
        }
        
        
    }
    
    
    
}

