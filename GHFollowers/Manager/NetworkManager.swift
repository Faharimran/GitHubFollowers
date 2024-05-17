//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Fahar Imran on 16/05/24.
//

import Foundation

class NetworkManager{
    let shared = NetworkManager()
    let baseURL = "https://api.github.com/user/"
    private init() {}


func getFollowers(for username: String,page : Int, completed: @escaping ([Followers]?, String?) -> Void){
    let endPoint = baseURL + "https://api.github.com/\(username)/followers?per_page=100"
}
}
