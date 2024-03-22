//
//  BookmarkViewModel.swift
//  NewsApp
//
//  Created by Mac on 4/4/23.
//

import Foundation

class BookmarkViewModel: ObservableObject {
    
    @Published var news: [Article] = []
    
    func add(article: Article) {
        self.news.append(article)
        
        print("Self.news", self.news)
    }
}
