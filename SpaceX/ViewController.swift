//
//  ViewController.swift
//  SpaceX
//
//  Created by Григорий Душин on 06.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var rockets: [RocketModelElement] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        RocketLoader().rocketDataLoad { rockets in
            self.rockets = rockets
            print(rockets.count)
            
        }
       
    }
    
   
    
}

