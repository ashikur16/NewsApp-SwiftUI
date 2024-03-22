//
//  NewsURL.swift
//  NewsApp
//
//  Created by Mac on 8/8/23.
//

import Foundation

enum Category: String, CaseIterable {
    case All = "All"
    case Business = "Business"
    case Entertainment = "Entertainment"
    case Health = "Health"
    case Science = "Science"
    case Sports = "Sports"
    case Technology = "Technology"
}

protocol NewsURL {
    func categoryURL(category: String) -> String
}

class AllNews: NewsURL {
    func categoryURL(category: String) -> String {
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=fd855bda16fe43e0b09265b79e3b388f"
    }
}

class CategoryWiseNews: NewsURL {
    
    func categoryURL(category: String) -> String {
        "https://newsapi.org/v2/top-headlines?country=us&category=\(category)&apiKey=fd855bda16fe43e0b09265b79e3b388f"
    }
    
}

class NewsURLFactory {
    
    func getURL(category: String) -> String {
        
        switch category {
            
        case Category.Business.rawValue:
            return CategoryWiseNews().categoryURL(category: Category.Business.rawValue)
            
        case Category.Entertainment.rawValue:
            return CategoryWiseNews().categoryURL(category: Category.Entertainment.rawValue)
            
        case Category.Health.rawValue:
            return CategoryWiseNews().categoryURL(category: Category.Health.rawValue)
            
        case Category.Science.rawValue:
            return CategoryWiseNews().categoryURL(category: Category.Science.rawValue)
            
        case Category.Sports.rawValue:
            return CategoryWiseNews().categoryURL(category: Category.Sports.rawValue)
            
        case Category.Technology.rawValue:
            return CategoryWiseNews().categoryURL(category: Category.Technology.rawValue)
            
        default:
            return AllNews().categoryURL(category: "")
        }
    }
}
