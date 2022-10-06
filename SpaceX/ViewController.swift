//
//  ViewController.swift
//  SpaceX
//
//  Created by Григорий Душин on 06.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        rocketDataLoad()
    }

     
    func rocketDataLoad(){
        let session = URLSession.shared

        let url = URL(string: "https://api.spacexdata.com/v4/rockets")!
        let task = session.dataTask(with: url) { (data, responce, error) in
            DispatchQueue.main.async{
            guard error == nil else{
                print("Error")
                return
        }
        do {
            let json = try JSONDecoder().decode(RocketModel.self, from: data!)

            print (json[0].diameter.meters)

        }catch{
            print("wrong url")
        }
    }

}
        task.resume()
}
}

