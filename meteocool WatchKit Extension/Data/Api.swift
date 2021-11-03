//
//  ModelData.swift
//  meteocool WatchKit Extension
//
//  Created by Phil Baum on 01.11.21.
//

import Foundation
import Alamofire

class Api {
    
    func loadRainForecast(completion:@escaping (RainForecast) -> Void) {
        
        let apiUrl = "https://api.meteocool.com/v2/radar/?lat=51.777790&lon=10.143653956173708"
        
        guard let url = URL(string: apiUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let weather = try! JSONDecoder().decode(RainForecast.self, from: data!)
            
            //dump(weather)
            
            DispatchQueue.main.async {
                completion(weather)
            }
            
        }
        .resume()
    }
}

