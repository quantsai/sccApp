//
//  ArticleDetail.swift
//  sccApp
//
//  Created by 蔡铨 on 2024/8/5.
//

import SwiftUI

struct ArticleDetail: View {
    
    var article:Article
    
    
    
    var body: some View {
        ScrollView{
            
            Text(article.body)
            
        }.navigationTitle(article.title)
    }
}

#Preview {
    ArticleDetail(article: Article(id: 1, title: "", body: ""))
}
