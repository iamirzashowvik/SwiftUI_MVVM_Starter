//
//  HomeViewModel.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 31/5/23.
//

import Foundation


class HomeViewModel:ObservableObject{
    
    
    @Published var homepageSection = HomepageSection()
    
    func postHomepageSection() async {
      Task {
          let body:[String:String] = [:]
        let api = ApiService()
        let headers: [String: String]? = nil
          let result:HomepageSection = try await api.request(
            url:AppStrings.homepageSectionUrl, method: "POST",
          body: body, headers: headers)
          DispatchQueue.main.async {
              self.homepageSection=result
          }
        
          
      }
    }
}
