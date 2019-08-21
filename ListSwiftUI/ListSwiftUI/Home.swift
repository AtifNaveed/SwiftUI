//
//  Home.swift
//  ListSwiftUI
//
//  Created by Atif on 20/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                NavigationLink(destination: StaticList().navigationBarTitle("Static List", displayMode: .inline)) {
                    Text("Static List").font(.title).padding(20).clipShape(Rectangle()).overlay(Rectangle().stroke(Color.blue, lineWidth: 5))
                }.navigationBarTitle("Home")
                NavigationLink(destination: DynamicList().navigationBarTitle("Static List", displayMode: .inline)) {
                    Text("Dynamic List").font(.title).padding(20).clipShape(Rectangle()).overlay(Rectangle().stroke(Color.blue, lineWidth: 5))
                }.navigationBarTitle("Home")
            }
        }
    }
}

#if DEBUG
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
#endif
