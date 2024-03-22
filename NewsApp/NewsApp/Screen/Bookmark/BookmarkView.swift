//
//  BookMarkView.swift
//  NewsApp
//
//  Created by Mac on 4/4/23.
//

import SwiftUI

struct BookmarkView: View {

    @EnvironmentObject var bookmarkViewModel: BookmarkViewModel
    @StateObject var newsViewModel = NewsViewModel()
    @Binding var articles: [Article]

    var body: some View {
        NavigationView {
            List {
                ForEach(bookmarkViewModel.news, id: \.self) { news in
                    NewsListCell(news: news)
                        .onTapGesture {
                            newsViewModel.selectedNews = news
                        }
                }
            }
            .navigationTitle("Bookmark")
        }
        .onAppear {
            print(articles)
        }
        .fullScreenCover(isPresented: $newsViewModel.isShowingDetailView) {
            NewsDetailView(viewModel: NewsDetailViewModel(selectedNews: newsViewModel.selectedNews ?? MockData.sampleNews), isShowingDetailView: $newsViewModel.isShowingDetailView)
        }
    }
}

struct BookMarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView(articles: .constant([MockData.sampleNews]))
            .environmentObject(BookmarkViewModel())
    }
}
