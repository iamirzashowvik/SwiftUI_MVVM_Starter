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
      do {
        let body: Data? = nil
        let api = ApiService()
        let headers: [String: String]? = nil
         homepageSection = try await api.request(
            url:AppStrings.homepageSectionUrl, method: "POST",
          body: body, headers: headers)
          print(homepageSection)
        
          
      } catch {
        print("Error fetching data: \(error)")
      }
    }
}
