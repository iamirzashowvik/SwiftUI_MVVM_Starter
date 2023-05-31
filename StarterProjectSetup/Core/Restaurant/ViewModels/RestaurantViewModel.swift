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
      Task {
          let body = ["restaurant": id, "area" : "gulshan", "platform": "app"] as [String : Any]
        let api = ApiService()
        let headers: [String: String]? = nil
          let result:GetProducts = try await api.request(
            url:AppStrings.getProductsUrl, method: "POST",
            body: body, headers: headers)
          
          DispatchQueue.main.async {
              self.getProducts = result
          }
          
      }
    }
    
    struct Data{
        let restaurant:String
        init(restaurant: String) {
            self.restaurant = restaurant
        }
    }
}


