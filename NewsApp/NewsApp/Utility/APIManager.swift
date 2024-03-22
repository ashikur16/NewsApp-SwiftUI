//
//  APIManager.swift
//  NewsApp
//
//  Created by Mac on 3/4/23.
//

import Foundation

class APIManager {
    
    static let shared = APIManager()
    
    private init() {}
    
//    func getDataFromAPI(completion: @escaping (News) -> ()) {
//
//        let url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=fd855bda16fe43e0b09265b79e3b388f"
//
//        let task = URLSession.shared.dataTask(with: URL(string: url)!) { data, _, error in
//            if error != nil {
//                print("Error")
//                return
//            }
//
//            guard let data = data else {
//                print("No data found")
//                return
//            }
//
//            do {
//                let news = try JSONDecoder().decode(News.self, from: data)
//                completion(news)
//            } catch {
//                print("Data not decoded")
//            }
//        }
//        task.resume()
//    }
    
    func getDataFromAPI(url: String, completion: @escaping (News) -> ()) {
        
        //let url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=fd855bda16fe43e0b09265b79e3b388f"
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!) { data, _, error in
            if error != nil {
                print("Error")
                return
            }
            
            guard let data = data else {
                print("No data found")
                return
            }
            
            do {
                let news = try JSONDecoder().decode(News.self, from: data)
                completion(news)
            } catch {
                print("Data not decoded")
            }
        }
        task.resume()
    }

}
