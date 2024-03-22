//
//  ProgressView.swift
//  NewsApp
//
//  Created by Mac on 1/8/23.
//

//import SwiftUI

//struct ProgressView: View {
//    var body: some View {
//        ZStack {
//            ProgressView()
//                .progressViewStyle(CircularProgressViewStyle())
//                .padding()
//               // and if you want to be explicit / future-proof...
//               // .progressViewStyle(CircularProgressViewStyle())
//        }
//    }
//}

//struct ProgressView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProgressView()
//    }
//}


import SwiftUI

//struct ActivityIndicator: UIViewRepresentable {
//    func makeUIView(context: Context) -> UIActivityIndicatorView {
//        let activityIndicatorView = UIActivityIndicatorView(style: .large)
//        activityIndicatorView.color = UIColor(.green)
//        activityIndicatorView.startAnimating()
//        return activityIndicatorView
//    }
//
//    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
//}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ProgressView("Loading...")
                .progressViewStyle(CircularProgressViewStyle(tint: .green))
                .scaleEffect(2)
        }
    }
}
