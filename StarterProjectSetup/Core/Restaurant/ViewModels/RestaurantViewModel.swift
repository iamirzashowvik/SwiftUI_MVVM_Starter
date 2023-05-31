//
//  HomeViewModel.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 31/5/23.
//

import Foundation


class RestaurantViewModel:ObservableObject{
   
    
    @Published var getProducts = GetProducts()
    
    func postGetProducts(id:String) async {
      do {
          let body = ["restaurant": id, "area" : "gulshan", "platform": "app"] as [String : Any]
        let api = ApiService()
        let headers: [String: String]? = nil
         getProducts = try await api.request(
            url:AppStrings.getProductsUrl, method: "POST",
            body: body, headers: headers)
          
        
          
      } catch {
        print("Error fetching data: \(error)")
      }
    }
    
    struct Data{
        let restaurant:String
        init(restaurant: String) {
            self.restaurant = restaurant
        }
    }
}


