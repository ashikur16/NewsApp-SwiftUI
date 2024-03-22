//
//  NewsDetailView.swift
//  NewsApp
//
//  Created by Mac on 4/4/23.
//

import SwiftUI

struct NewsDetailView: View {
    
    var viewModel: NewsDetailViewModel
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        
        ScrollView {
            VStack() {
                VStack(alignment: .leading, spacing: 20) {
                    Button {
                        isShowingDetailView = false
                            
                    }label: {
                        Text("<Back")
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                    Spacer()
                    Text(viewModel.selectedNews.title ?? "")
                        .font(.title2)
                        .fontWeight(.bold)
                        .italic()
                    Text(viewModel.selectedNews.author ?? "")
                        .foregroundColor(.secondary)
                    Text(viewModel.selectedNews.publishedAt ?? "")
                        .foregroundColor(.secondary)
                    
                    let url = URL(string: viewModel.selectedNews.urlToImage ?? "")
                    
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .frame(height: 200)
                    } placeholder: {
                        Color.white
                    }
                    Text(viewModel.selectedNews.description ?? "")
//                        .lineLimit(12)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .padding(10)
                
                VStack(alignment: .center) {
                    Link(destination: URL(string: viewModel.selectedNews.url ?? "https://www.google.com")!) {
                        Text("See More")
                            .font(.title2)
                    }
                }
            }
        }
    }
}

struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailView(viewModel: NewsDetailViewModel(selectedNews: MockData.sampleNews), isShowingDetailView: .constant(true))
    }
}
