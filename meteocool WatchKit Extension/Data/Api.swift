//
//  ModelData.swift
//  meteocool WatchKit Extension
//
//  Created by Phil Baum on 01.11.21.
//

import Foundation

class Api {
    
    func loadRainForecast(completion:@escaping (RainForecast) -> Void) {
        
        let apiUrl = "https://api.meteocool.com/v2/radar/?lat=53.999044&lon=7.2652520052"
        
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

