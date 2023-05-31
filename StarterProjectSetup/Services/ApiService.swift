//
//  ApiService.swift
//  StarterProjectSetup
//
//  Created by Mirza  on 31/5/23.
//

import Foundation


class ApiService {
    func request<T>(url: String, method: String, body:[String:Any]? = nil, headers: [String: String]? = nil)
    async throws -> T where T: Decodable
  {
    var request = URLRequest(url: URL(string: url)!)
    if method == "POST" || method == "GET" { // you can check more method here.
      request.httpMethod = method
        request.httpBody = body?.percentEncoded()
    
        
      request.setValue("food", forHTTPHeaderField: "X-Parse-Application-Id")
      request.setValue("app", forHTTPHeaderField: "platform")

      let (data, response) = try await URLSession.shared.data(for: request)
      guard let response = response as? HTTPURLResponse, response.statusCode == 200
        
     else {
          print(response.self.description)
          
          
        throw CustomError.unexpected(code: 102)
      }

      let decoder = JSONDecoder()
      decoder.keyDecodingStrategy = .convertFromSnakeCase
      return try decoder.decode(T.self, from: data)

    } else {
      throw CustomError.unexpected(code: 405)
    }

  }

}
enum CustomError: Error {
    // Throw when an invalid password is entered
    case invalidPassword

    // Throw when an expected resource is not found
    case notFound

    // Throw in all other cases
    case unexpected(code: Int)
}


extension Dictionary {
    func percentEncoded() -> Data? {
        map { key, value in
            let escapedKey = "\(key)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
            let escapedValue = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
            return escapedKey + "=" + escapedValue
        }
        .joined(separator: "&")
        .data(using: .utf8)
    }
}

extension CharacterSet {
    static let urlQueryValueAllowed: CharacterSet = {
        let generalDelimitersToEncode = ":#[]@" // does not include "?" or "/" due to RFC 3986 - Section 3.4
        let subDelimitersToEncode = "!$&'()*+,;="
        
        var allowed: CharacterSet = .urlQueryAllowed
        allowed.remove(charactersIn: "\(generalDelimitersToEncode)\(subDelimitersToEncode)")
        return allowed
    }()
}
