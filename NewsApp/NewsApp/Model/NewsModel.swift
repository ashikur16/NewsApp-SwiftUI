//
//  NewsModel.swift
//  NewsApp
//
//  Created by Mac on 3/4/23.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct News: Codable {
    let status: String?
    let totalResults: Int?
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Hashable {
    
    //let source: Source
    let author: String?
    let title, description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    let content: String?
}

//// MARK: - Source
//struct Source: Codable {
//    let id: String?
//    let name: String
//}

struct MockData {
    
    static let news1 = Article(author: "This is author name1",
                               title: "This is news title1",
                               description: "This is the description1 of the news. I am making it longer.",
                               url: "",
                               urlToImage: "https://www.reuters.com/resizer/E9nGINxsP3D4Uz3IaTPJ7wnCQW0=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/ERKGZP4Q2ZLXZMNIYEZTHEN2AQ.jpg",
                               publishedAt: "01/10/23",
                               content: "This is the content1 of the news.")
    
    static let news2 = Article(author: "This is author name2",
                               title: "This is news title2",
                               description: "This is the description2 of the news. I am making it longer.",
                               url: "",
                               urlToImage: "https://www.reuters.com/resizer/E9nGINxsP3D4Uz3IaTPJ7wnCQW0=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/ERKGZP4Q2ZLXZMNIYEZTHEN2AQ.jpg",
                               publishedAt: "02/10/23",
                               content: "This is the content2 of the news.")
    
    static let news3 = Article(author: "This is author name3",
                               title: "This is news title3",
                               description: "This is the description3 of the news. I am making it longer.",
                               url: "",
                               urlToImage: "https://www.reuters.com/resizer/E9nGINxsP3D4Uz3IaTPJ7wnCQW0=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/ERKGZP4Q2ZLXZMNIYEZTHEN2AQ.jpg",
                               publishedAt: "03/10/23",
                               content: "This is the content3 of the news.")
    
    static let news4 = Article(author: "This is author name4",
                               title: "This is news title4",
                               description: "This is the description4 of the news. I am making it longer.",
                               url: "",
                               urlToImage: "https://www.reuters.com/resizer/E9nGINxsP3D4Uz3IaTPJ7wnCQW0=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/ERKGZP4Q2ZLXZMNIYEZTHEN2AQ.jpg",
                               publishedAt: "04/10/23",
                               content: "This is the content4 of the news.")
    
    
    static let allNews = [news1, news2, news3, news4]
    
    static let sampleNews = Article(author: "Anthony DiComo",
                                    title: "New York plans for Trump surrender with barricades, courtroom closings - Reuters.com",
                                    description: "New York City police have thrown up metal barriers around Trump Tower and blocked roads near Manhattan Criminal Courthouse as they brace for potential protests ahead of Donald Trump's expected surrender to prosecutors on Tuesday.",
                                    url: "https://www.reuters.com/world/us/new-york-plans-trump-surrender-with-barricades-courtroom-closings-2023-04-02/",
                                    urlToImage: "https://www.reuters.com/resizer/E9nGINxsP3D4Uz3IaTPJ7wnCQW0=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/ERKGZP4Q2ZLXZMNIYEZTHEN2AQ.jpg",
                                    publishedAt: "2023-04-03T01:13:00Z",
                                    content: "NEW YORK, April 2 (Reuters) - New York City police have thrown up metal barriers around Trump Tower and blocked roads near Manhattan Criminal Courthouse as they brace for potential protests ahead of … [+3170 chars]")
    
    
}
