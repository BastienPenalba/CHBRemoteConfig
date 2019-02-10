//
//  ViewController.swift
//  CHBRemoteConfigExample
//
//  Created by Bastien PENALBA on 25/01/2019.
//  Copyright © 2019 Tinylab. All rights reserved.
//

import UIKit
import CHBRemoteConfig

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1") else {
            return
        }
        
        let configService = CHBRemoteConfigService(url: url)
        let adsManager = AdsManager()
        configService.refreshConfig { (config, error) in
            guard let config = config else {
                print("Something went wrong")
                return
            }
            adsManager.update(with: config)
        }
    }

}

class AdsManager: Configurable {
    
    func update(with config: [String : Any]) {
        print("AdsManager updated with config: \(config)")
    }
    
}

