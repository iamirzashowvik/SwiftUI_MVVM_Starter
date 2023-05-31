//
//  HomeView.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 29/5/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showPort : Bool = false
    @ObservedObject var homeViewModel = HomeViewModel()
    
    
    var body: some View {
        ZStack(alignment: .top){
            // Background Layer
            Color.theme.accent.ignoresSafeArea()
            
            
            // Content Layer
            VStack(alignment: .leading){
               homeHeader
                VStack{
                    if (homeViewModel.homepageSection.result != nil)  {
                        List{
                            ForEach(homeViewModel.homepageSection.result ?? [],id: \.id){ section in
                                VStack(alignment: .leading){
                                    Text(section.name!)
                                    ScrollView(.horizontal) {
                                                LazyHStack {
                                                    ForEach(section.items ?? [], id: \.id) { restaurant in
                                                       RestaurantCardComponent(restaurant: restaurant)
                                                    }
                                                }
                                    }.frame( height:200)
                                }
                            }
                        }.listStyle(.plain)
                        
                    }
                }
               
               
            }
        }.task {
            await homeViewModel.postHomepageSection()
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
            Image(systemName: "text.justify").foregroundColor(Color.white)
            Spacer()
                .frame(width:  ConstSizing.lgPadding)
            VStack(alignment: .leading){
                Text("Deliver To").foregroundColor(Color.theme.cyan).bold()
                Text("Lalbag, Dhaka").foregroundColor(Color.white)
            }
            Spacer()
            Image(systemName: "magnifyingglass").foregroundColor(Color.white)
            
        }.padding()
    }
}
