//
//  ContentView.swift
//  sccApp
//
//  Created by 蔡铨 on 2024/7/19.
//

import SwiftUI

struct BasicView: View {
    
    @State var username = ""
    @State var password = ""
    @State var description = "des"
        
    
    var body: some View {
        VStack {
            
            HStack{
                Text("Liu白")
                Divider() // 分割线
                Spacer() // 留白
                
                EmptyView().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100) // 空视图
            }
            
            Divider()
            HStack{
                Text("排列")
                Spacer()
                HStack{
                    Text("name")
                    Text("cq")
                }
                VStack{
                    Text("age")
                    Text("18")
                }
                ZStack{ // 重叠，类似Positioned:absoute
                    RoundedRectangle(cornerRadius: 24).frame(width: 100, height: 100).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    Text("foreground")
                }
            }
            
            Divider()
            HStack{
                Text("文本")
                Spacer()
                Text("文本")
                Label("图标文本", systemImage: "square.stack")
                
                Link("链接",destination: URL(string: "https://www.baidu.com")!)
            }
            
            Divider()
            HStack{
                Text("输入框")
                Spacer()
                
                TextField("用户名", text: $username).frame(width: 80)
                SecureField("密码", text: $password).frame(width: 80)
                TextEditor(text: $description).frame(width: 100,height: 100)
            }
            
            Divider()
            HStack{
                Text("图标/图片")
                Spacer()
                Image(systemName: "folder") // SF Symbols中的图标名
                Image("2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                
            }
            
           
            HStack{
                Text("图形")
                Spacer()
                Rectangle().frame(width: 20, height: 20)
                RoundedRectangle(cornerRadius: 5).frame(width: 20, height: 20)
                Circle().frame(width: 20, height: 20)
                Capsule().frame(width: 40, height: 20)
                Ellipse().frame(width: 40, height: 20)
                
            }
            
            Divider()
            
            
            
            
            Spacer()
            
        }
    
    }
}

#Preview {
    BasicView()
}
