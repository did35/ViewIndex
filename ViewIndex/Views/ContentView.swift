//
//  ContentView.swift
//  ViewIndex
//
//  Created by Didier Delhaisse on 04/03/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @StateObject var vm = DetailViewModel()
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List(vm.animals) { animal in
                NavigationLink(destination: DetailView(animalID: animal.id, vm: vm)) {
                    Text(animal.animalName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Animals")
        }
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
