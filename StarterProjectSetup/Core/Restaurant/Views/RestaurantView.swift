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
        VStack(alignment: .leading){
            if restaurantViewModel.getProducts.result == nil  {
                ProgressView()
            }
            else{
                VStack(alignment: .leading){
                    NetworkImage(image: restaurantViewModel.getProducts.result?.bannerImage , height: 150, width: UIScreen.screenWidth)
                    Text(restaurantViewModel.getProducts.result?.name ?? "nameX")
                    Spacer()
                    List{
                        ForEach(restaurantViewModel.getProducts.result?.data ?? [] ,id: \.category){ category in
                            VStack{
                                Text(category.category!)
                               
                                ScrollView(.horizontal) {
                                            VStack {
                                                ForEach(category.items ?? [],id:\.id){ item in
                                                    Text(item.name!)
                                                }
                                            }
                                }.frame( height:200)
                            }
                            
                        }
                    }.listStyle(.plain)
                }
            }
        }.task {
            await   restaurantViewModel.postGetProducts(id: restaurantId)
           }
    }
}
