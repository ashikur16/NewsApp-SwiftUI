//
//  NewsDetailViewModel.swift
//  NewsApp
//
//  Created by Mac on 4/4/23.
//

import SwiftUI
import Foundation

class NewsDetailViewModel: ObservableObject {
    
    var selectedNews: Article
    
    init(selectedNews: Article) {
        self.selectedNews = selectedNews
    }
}
