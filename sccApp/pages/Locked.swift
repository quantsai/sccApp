//
//  Locked.swift
//  sccApp
//
//  Created by 蔡铨 on 2024/9/5.
//

import SwiftUI
import LocalAuthentication

struct Locked: View {
    
    @Binding var locked:Bool
    
    
    var body: some View {
        Button("点击验证1"){
            authorize{ result in
                DispatchQueue.main.async {
                    locked = !result
                }
            }
        }
    }
    
    
    
}

#Preview {
    @State var locked = false;
    return Locked(locked: $locked)
}
