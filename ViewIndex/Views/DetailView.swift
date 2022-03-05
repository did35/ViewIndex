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
    @ObservedObject var vm: DetailViewModel
    
    // MARK: - Body
    var body: some View {
        VStack {
            // View will be updated when @State changes
            // In here, the view is just a Text but you can put more complex views...
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
        DetailView(animalID: 1, vm: DetailViewModel())
    }
}
