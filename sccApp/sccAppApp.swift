//
//  sccAppApp.swift
//  sccApp
//
//  Created by 蔡铨 on 2024/7/19.
//
import LocalAuthentication
import SwiftUI


@main
struct sccAppApp: App {
    
    let motionManager = MotionManager()
    @State var locked = true;
    
    
    
    var body: some Scene {
        
        WindowGroup {
            Group{
                if locked {
                    Locked(locked: $locked)
                }else {
                    Route()
                }
            }
            .onAppear{
                authorize{ result in
                    DispatchQueue.main.async {
                        locked = !result
                    }
                }
            }
        }
        
    }
    
    
    
    
    
}
