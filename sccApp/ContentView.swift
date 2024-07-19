//
//  ContentView.swift
//  sccApp
//
//  Created by 蔡铨 on 2024/7/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
            Text("hello world")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
