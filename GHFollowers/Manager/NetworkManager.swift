//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Fahar Imran on 16/05/24.
//

import UIKit

class NetworkManager{
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/user/"
    private init() {}


func getFollowers(for username: String,page : Int, completed: @escaping ([Followers]?, String?) -> Void){
    let endPoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
    
    guard let url = URL(string: endPoint) else{
        completed(nil,"This username created an Invalid request")
        return
    }
    let task = URLSession.shared.dataTask(with: url) {data, response, error in
        if let _ = error{
            completed(nil,"Unable to complete the request, check internet")
            return
            
        }
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else{
            completed(nil, "Invalid response from the server")
            return
        }
        guard let data = data else{
            completed(nil,"The response got from the server is invalid")
            return
        }
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let follower = try decoder.decode([Followers].self, from: data)
            completed(follower,nil)
        }catch{
            completed(nil,"The response got from the server is invalid")
        }
        
    }
    task.resume()
}
}
