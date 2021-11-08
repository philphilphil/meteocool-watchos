//
//  ModelData.swift
//  meteocool WatchKit Extension
//
//  Created by Phil Baum on 01.11.21.
//

import Foundation

class Api {
    
    func loadRainForecast(completion:@escaping (RainForecast) -> Void) {
        
        let apiUrl = "https://api.meteocool.com/v2/radar/?lat=50.78221461334852&lon=14.302757773785745"
        
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

