//
//  ContentView.swift
//  sccApp
//
//  Created by 蔡铨 on 2024/7/31.
//

import SwiftUI

struct ContentView: View {
    @StateObject var data = ArticleData()
    @AppStorage("darkMode") var darkMode = false
//    @EnvironmentObject var motionManager:MotionManager;
    
    var body: some View {

        NavigationView{
            
            List(data.articles){ article in
                
                NavigationLink(destination: ArticleDetail(article: article)){
                    Row(article: article)
                }
                
                
            }
            .navigationTitle("Articles")
            .toolbar{
                Settings(darkMode: $darkMode)
            }
            
        }
        // set dark mode
        .preferredColorScheme(darkMode ? .dark : .light)
        
        
        
    }
}

#Preview {
    ContentView()
}


struct Row:View {
     var article:Article
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text(article.title)
                .font(.headline)
            Text(article.body)
                .font(.body)
                .lineLimit(3)
        }.padding()
    }
}
