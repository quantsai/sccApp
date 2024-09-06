//
//  Route.swift
//  sccApp
//
//  Created by 蔡铨 on 2024/9/5.
//

import SwiftUI

struct Route: View {
    var body: some View {
        
        
        TabView{
            
            Examples()
                .tabItem { Label("Note", systemImage: "note.text") }
            
            
            PrivacyDoc()
                .tabItem { Label("privacy", systemImage: "note.text") }
           

        }
    }
}

#Preview {
    Route()
}
