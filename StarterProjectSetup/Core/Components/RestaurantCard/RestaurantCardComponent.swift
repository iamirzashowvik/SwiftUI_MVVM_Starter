//
//  RestaurantCardComponent.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 31/5/23.
//

import SwiftUI

struct RestaurantCardComponent: View {
    let restaurant:HomepageSection.Item
    init(restaurant:HomepageSection.Item) {
        self.restaurant = restaurant
        
    }
  
    
    var body: some View {
        NavigationLink(destination: RestaurantView(restaurantId: restaurant.id).statusBarHidden(true).navigationBarBackButtonHidden(true), label: {
            VStack(alignment: .leading){
                
                NetworkImage(image: restaurant.bannerImage , height: 150, width: UIScreen.screenWidth * 0.6)
                Text(restaurant.name ?? "Munchies Store").foregroundColor(Color.theme.secondary)
                Text(restaurant.cuisines ?? "Coke Chips Chocklets Tonger Dokan Biri").foregroundColor(Color.theme.secondary).frame(maxWidth: UIScreen.screenWidth * 0.6, alignment: .leading).lineLimit(1)
            }
        })
        
    }
}
