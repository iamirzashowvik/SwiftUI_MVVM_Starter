//
//  HomeView.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 29/5/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showPort : Bool = false
    
    
    var body: some View {
        ZStack{
            // Background Layer
            Color.theme.background.ignoresSafeArea()
            
            
            // Content Layer
            VStack{
               homeHeader
                Spacer(minLength: 0)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            HomeView().navigationBarHidden(true)
        }
    }
}

extension HomeView{
    private var homeHeader: some View{
        HStack{
            CircleButtonViews(iconName: showPort ? "plus" : "info").animation(.none)
            Spacer()
            Text("Header").font(.headline).foregroundColor(Color.theme.accent).fontWeight(.heavy)
            Spacer()
            CircleButtonViews(iconName: "chevron.right").rotationEffect(
                Angle(degrees: showPort ? 180 : 0 )).onTapGesture {
                withAnimation(.spring()){
                    showPort.toggle()
                }
            }
        }
    }
}
