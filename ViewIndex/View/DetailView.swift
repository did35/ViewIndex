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
                animalID += 1
            } label: {
                HStack {
                    Image(systemName: "arrowshape.turn.up.right")
                    Text("Go to \(vm.animals[animalID].animalName)")
                }
            }
            .disabled(animalID >= vm.animals.count - 1)
            Spacer()
        }
    }
}

// MARK: - Preview
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(animalID: 1, vm: ViewIndexViewModel())
    }
}
