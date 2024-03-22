//
//  NewsViewModel.swift
//  NewsApp
//
//  Created by Mac on 3/4/23.
//

import Foundation

class NewsViewModel: ObservableObject {
    
    @Published var allNews: [Article] = []
    @Published var isShowingDetailView = false
    @Published var isLoading = false
    
    var selectedNews: Article? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    let newsURL: [String : String] = [
        
        "all": "https://newsapi.org/v2/top-headlines?country=us&apiKey=fd855bda16fe43e0b09265b79e3b388f",
        
        "Business": "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=fd855bda16fe43e0b09265b79e3b388f",
            
        "Entertainment": "https://newsapi.org/v2/top-headlines?country=us&category=entertainment&apiKey=fd855bda16fe43e0b09265b79e3b388f",
        
        "Health": "https://newsapi.org/v2/top-headlines?country=us&category=health&apiKey=fd855bda16fe43e0b09265b79e3b388f",
        
        "Science": "https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=fd855bda16fe43e0b09265b79e3b388f",
        
        "Sports": "https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=fd855bda16fe43e0b09265b79e3b388f",
        
        "Technology": "https://newsapi.org/v2/top-headlines?country=us&category=technology&apiKey=fd855bda16fe43e0b09265b79e3b388f"
    ]
    
//    func getAllNews() {
//        APIManager.shared.getDataFromAPI { news in
//            DispatchQueue.main.async {
//                self.allNews = news.articles
//            }
//        }
//    }
    
    func getNewsCategoryWise(url: String) {
        isLoading = true
        APIManager.shared.getDataFromAPI(url: url) { news in
            DispatchQueue.main.async {
                self.allNews = news.articles
                self.isLoading = false
            }
        }
    }
}
