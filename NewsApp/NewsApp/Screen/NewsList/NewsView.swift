//
//  ContentView.swift
//  NewsApp
//
//  Created by Mac on 3/4/23.
//

import SwiftUI

struct NewsView: View {
    
    @StateObject var viewModel = NewsViewModel()
    @EnvironmentObject var bookmarkViewModel: BookmarkViewModel
    @State var isBookmarked = false
    @State var selectedItem = ""
    var categories = Category.allCases.map { $0.rawValue } // ["All", "Business", "Entertainment", "Health", "Science", "Sports", "Technology"]
    
    var body: some View {
        
        ZStack {
            NavigationView {
                
                List {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 30) {
                            ForEach(categories, id: \.self) { category in
                                Text(category)
                                    .foregroundColor(selectedItem == category ? Color.black : Color.gray)
                                    .onTapGesture {
                                        viewModel.getNewsCategoryWise(url: NewsURLFactory().getURL(category: category))
                                        selectedItem = category
                                    }
                            }
                        }
                        .font(.title2)
                        .bold()
                    }
                    
                    ForEach(viewModel.allNews, id: \.self) { news in
                        NewsListCell(news: news)
                            .onTapGesture {
                                viewModel.selectedNews = news
                            }
                            .swipeActions(edge: .trailing) {
                                Button {
                                    bookmarkViewModel.add(article: news)
                                    isBookmarked = true
                                    
                                }label: {
                                    Image(systemName: "bookmark")
                                }
                            }
                    }
                    .alert("Bookmarked Successfully", isPresented: $isBookmarked) {}
                    
                }
                .navigationTitle("News")
            }
            .onAppear {
                viewModel.getNewsCategoryWise(url: NewsURLFactory().getURL(category: "All"))
            }
            .fullScreenCover(isPresented: $viewModel.isShowingDetailView) {
                NewsDetailView(viewModel: NewsDetailViewModel(selectedNews: viewModel.selectedNews ?? MockData.sampleNews), isShowingDetailView: $viewModel.isShowingDetailView)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
            .environmentObject(BookmarkViewModel())
    }
}
