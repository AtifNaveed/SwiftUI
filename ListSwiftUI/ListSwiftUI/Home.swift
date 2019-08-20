//
//  Home.swift
//  ListSwiftUI
//
//  Created by Atif on 20/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State private var showDetails = false

    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {})
            {Text("Static List").font(.title)}.padding(20).clipShape(Rectangle()).overlay(Rectangle().stroke(Color.blue, lineWidth: 5))
         
            Button(action: {})
                     {Text("Dynamic List").font(.title)}.padding(20).clipShape(Rectangle()).overlay(Rectangle().stroke(Color.blue, lineWidth: 5))
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
