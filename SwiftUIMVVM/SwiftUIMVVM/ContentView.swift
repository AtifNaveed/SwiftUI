//
//  ContentView.swift
//  SwiftUIMVVM
//
//  Created by Atif on 25/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var vm = ViewModel()

    var body: some View {
        VStack {
            // TODO textfield binding crashed
            TextField("Enter amount: ", text: $vm.amount)
            .padding()
            
            // Picker bind with ViewModel
            Picker(selection: $vm.selectedIndex, label: Text("Picker")) {
                ForEach(0 ..< vm.options.count) {
                    Text("\(self.vm.options[$0])")
                }
            }.padding()
            
            Button(action: {
                self.vm.calculate()
            }) {
                Text("Calculate")
            }.padding()


            // Text bind with ViewModel
            Text("Calculated value is: \(vm.calculatedValue)")
        }

    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
