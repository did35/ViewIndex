//
//  DataModel.swift
//  ViewIndex
//
//  Created by Didier Delhaisse on 04/03/2022.
//

import Foundation

struct DataModel: Identifiable, Codable {
    let id: Int
    let animalName: String
    let url: String
    
    private enum CodingKeys: String, CodingKey {
        case id, animalName, url
    }
}
