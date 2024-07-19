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
        
            // FIXME: sss
            // icon
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.blue)
                Text("Hello, world!")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.primarySecond)
                
            Image("2")
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                
            Label(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)


            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
