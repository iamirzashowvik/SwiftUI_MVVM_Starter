//
//  StarterProjectSetupApp.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 29/5/23.
//

import SwiftUI

@main
struct StarterProjectSetupApp: App {
    @StateObject private var cartController = CartController()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                SplashView().navigationBarHidden(true).environment( \.managedObjectContext,cartController.container.viewContext)
            }
        }
    }
}
