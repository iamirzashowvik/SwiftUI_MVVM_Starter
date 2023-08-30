//
//  RestaurantView.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 31/5/23.
//

import SwiftUI

struct RestaurantView: View {
    let restaurantId:String
    init(restaurantId:String) {
        self.restaurantId = restaurantId
       
    }
    
    @ObservedObject var restaurantViewModel = RestaurantViewModel()
    
    
    var body: some View {
        ZStack{
//            Color.theme.background.ignoresSafeArea()
            
            VStack(alignment: .leading){
                if restaurantViewModel.getProducts.result == nil  {
                    ProgressView()
                }
                else{
                    VStack(alignment: .leading){
                        NetworkImage(image: restaurantViewModel.getProducts.result?.bannerImage , height: 200, width: UIScreen.screenWidth)
                        Text(restaurantViewModel.getProducts.result?.name ?? "nameX")
                        Spacer()
                        List{
                            ForEach(restaurantViewModel.getProducts.result?.data ?? [] ,id: \.category){ category in
                                VStack(alignment:.leading){
                                    Text(category.category!)
                                    VStack {
                                        ForEach(category.items ?? [],id:\.id){ item in
                                            ProductCard(product: item)
                                        }
                                    }//.background(Color.theme.background)
                                }
                                
                            }
                        }.scrollContentBackground(.hidden).listStyle(.plain)//.background(Color.theme.background)
                    }//.background(Color.theme.background)
                }
            }
        }
        
        .task {
            await   restaurantViewModel.postGetProducts(id: restaurantId)
           }
    }
}
