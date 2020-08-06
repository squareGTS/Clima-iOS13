//
//  WeatherMeneger.swift
//  Clima
//
//  Created by Maxim Bekmetov on 06.08.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather&units=metric&appid=673a0cc8fbf5e9a44450c3a8f17d7ac7"
    
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        //1. Create URL
        
        if let url = URL(string: urlString) {
            
            
            
            //2. Create a URLSession
            
            let session = URLSession(configuration: .default)
            
            //3.Give the session a task
            
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            //4.Start the task
            
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
        }
    }
    
    
    
}


