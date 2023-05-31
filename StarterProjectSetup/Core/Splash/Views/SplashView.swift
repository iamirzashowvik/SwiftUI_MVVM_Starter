//
//  SplashView.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 30/5/23.
//

import SwiftUI

struct SplashView: View {
    @State private var isShowingDetailView = false
    
    var body: some View {
        ZStack{
            NavigationLink(destination: HomeView().navigationBarBackButtonHidden(true), isActive: $isShowingDetailView) { EmptyView() }
            Color.theme.background.ignoresSafeArea()
            Image(Assets.munchiesLogo).resizable().frame(width: 150,height: 150)
        }.task {
          sleep(2)
            isShowingDetailView = true
            
            
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SplashView().navigationBarHidden(true).statusBarHidden(true)
        }
    }
}
