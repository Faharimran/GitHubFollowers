//
//  User.swift
//  GHFollowers
//
//  Created by Fahar Imran on 15/05/24.
//

import Foundation
struct User: Codable{
    var login : String
    var avatarUrl : String
    var name : String?
    var location : String?
    var bio : String?
    var publicRepos : Int
    var publicGits : Int
    var htmlUrl : String
    var following : Int
    var followers : Int
    var createdAt : Int
    
}
