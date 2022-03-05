//
//  DetailView.swift
//  ViewIndex
//
//  Created by Didier Delhaisse on 04/03/2022.
//

import SwiftUI

struct DetailView: View {
    // MARK: - Properties
    @State var animalID: DataModel.ID
    @ObservedObject var vm: ViewIndexViewModel
    
    // MARK: - Body
    var body: some View {
        VStack {
            Text(vm.animals[animalID - 1].animalName)
                .font(.largeTitle)
                .padding()
            
            Spacer()
            Button {
                checkIndex()
            } label: {
                HStack {
                    Image(systemName: "arrowshape.turn.up.right")
                    if animalID == 4 {
                        Text("Go to \(vm.animals[0].animalName)")
                    } else {
                        Text("Go to \(vm.animals[animalID].animalName)")
                    }
                }
            }
            Spacer()
        }
    }
    
    // MARK: - Function
    // Refactor in the ViewIndexViewModel if necessary.
    func checkIndex() {
        let numAnimals = vm.animals.count
        if animalID == numAnimals {
            animalID = 1
        } else {
            animalID += 1
        }
    }
}

// MARK: - Preview
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(animalID: 1, vm: ViewIndexViewModel())
    }
}
