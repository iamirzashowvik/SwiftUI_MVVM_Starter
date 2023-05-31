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
        print(restaurant.bannerImage ?? "nilx")
    }
  
    
    var body: some View {
        VStack(alignment: .leading){
            AsyncImage(
                url: URL(string:restaurant.bannerImage ?? "https://i.pinimg.com/564x/4a/e2/cd/4ae2cd3a5023659cb59ed3a09de29b99.jpg"),
                            content: { image in
                                image.resizable()
                                    .aspectRatio(UIScreen.screenWidth * 0.6/150, contentMode: .fit
                                    )
                                    .frame(width: UIScreen.screenWidth * 0.6 , height:150)
                            },
                            placeholder: {
                                ProgressView()
                            }
                        )
            Text(restaurant.name ?? "Munchies Store").foregroundColor(Color.theme.secondary)
            Text(restaurant.cuisines ?? "Coke Chips Chocklets Tonger Dokan Biri").foregroundColor(Color.theme.secondary).frame(maxWidth: UIScreen.screenWidth * 0.6, alignment: .leading).lineLimit(1)
        }
    }
}
