//
//  Data.swift
//  sccApp
//
//  Created by 蔡铨 on 2024/8/5.
//

import Foundation

struct Article:Codable, Identifiable {
    var id:Int
    var title:String
    var body:String
}

class ArticleData:ObservableObject{
    @Published var articles:[Article] = []
    
    init() {
        let url = URL(string: "https://www.legolas.me/s/articles.json")!
        
        
        URLSession.shared.dataTask(with: url){ (data, response, error) in
            DispatchQueue.main.async {
                
                if let list = try? JSONDecoder().decode([Article].self, from: data!){
                    print("suc")
                    self.articles = list
                }else{
                    print("fail")
                    self.articles = []
                }
            }
        }.resume()
    }
}
