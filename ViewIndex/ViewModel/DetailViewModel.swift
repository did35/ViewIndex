//
//  ViewIndexViewModel.swift
//  ViewIndex
//
//  Created by Didier Delhaisse on 04/03/2022.
//

import Foundation

class DetailViewModel: ObservableObject {
    @Published var animals: [DataModel] = Bundle.main.decode("animals.json")
}
