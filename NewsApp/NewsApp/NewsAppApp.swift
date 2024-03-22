//
//  NewsAppApp.swift
//  NewsApp
//
//  Created by Mac on 3/4/23.
//

import SwiftUI

@main
struct NewsAppApp: App {
    var bookmarkViewModel = BookmarkViewModel()
    var body: some Scene {
        WindowGroup {
            NewsTabView()
                .environmentObject(bookmarkViewModel)
        }
    }
}
