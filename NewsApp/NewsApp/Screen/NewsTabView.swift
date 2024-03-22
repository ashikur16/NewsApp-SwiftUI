//
//  NewsTabView.swift
//  NewsApp
//
//  Created by Mac on 4/4/23.
//

import SwiftUI

struct NewsTabView: View {
    var body: some View {
        TabView {
            NewsView()
                .tabItem{
                    Image(systemName: "newspaper")
                    Text("News")
                }
            BookmarkView(articles: .constant([MockData.sampleNews]))
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Bookmark")
                }
        }
        .accentColor(.black)
    }
}

struct NewsTabView_Previews: PreviewProvider {
    static var previews: some View {
        NewsTabView()
    }
}
