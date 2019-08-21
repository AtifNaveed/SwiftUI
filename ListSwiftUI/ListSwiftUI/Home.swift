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
            VStack {
                NavigationLink(destination: StaticList().navigationBarTitle("Static List", displayMode: .inline)) {
                    Text("Static list").font(.title).padding(20)                        .foregroundColor(Color.black).clipShape(Rectangle()).overlay(Rectangle().stroke(Color.black, lineWidth: 5))
                        .cornerRadius(6.0)
                }.navigationBarTitle("Home")
                NavigationLink(destination: DynamicList().navigationBarTitle("Dynamic List", displayMode: .inline)) {
                    Text("Dynamic list with detail").font(.title).padding(20).clipShape(Rectangle()).overlay(Rectangle().stroke(Color.blue, lineWidth: 5))
                    .cornerRadius(6.0)
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
