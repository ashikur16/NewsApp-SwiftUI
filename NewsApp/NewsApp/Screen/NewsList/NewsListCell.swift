//
//  NewsListCell.swift
//  NewsApp
//
//  Created by Mac on 3/4/23.
//

import SwiftUI

struct NewsListCell: View {
    
    var news: Article
    
    var body: some View {
        HStack() {
            
            let url = URL(string: news.urlToImage ?? "news")
            
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .frame(width: 120, height: 100)
            } placeholder: {
                Color.gray
            }
                
            VStack(alignment: .leading) {
                Text(news.title ?? "")
                    .fontWeight(.bold)
                    .font(.title3)
                Text(news.author ?? "")
                Text(news.publishedAt ?? "")
                    .foregroundColor(.secondary)
                    .font(.system(size: 13))
            }
            .multilineTextAlignment(.leading)
            .lineLimit(2)
            
        }
    }
}

struct NewsListCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsListCell(news: MockData.sampleNews)
    }
}
