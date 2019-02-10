//
//  CHBRemoteConfigService.swift
//  CHBRemoteConfig
//
//  Created by Bastien PENALBA on 07/02/2019.
//  Copyright © 2019 Tinylab. All rights reserved.
//

import Foundation
import Alamofire

public protocol Configurable {
    func update(with config: [String: Any])
}

protocol DummyInternalProtocol {
    
}

public class CHBRemoteConfigService: DummyInternalProtocol {
    
    
    // MARK: Private Properties
    
    private var url: URL
    
    
    // MARK: Init
    
    public init(url: URL) {
        self.url = url
    }
    
    
    // MARK: Public API
    
    public func refreshConfig(completion: @escaping ([String: Any]?, Error?) -> Void) {

        Alamofire.request(url).responseJSON { response in
            switch response.result {
            case .success(let json):
                // Trigger completion block
                completion(json as? [String: Any], nil)
            case .failure(let error):
                completion(nil, error)
            }
        }
        
    }
    
}
