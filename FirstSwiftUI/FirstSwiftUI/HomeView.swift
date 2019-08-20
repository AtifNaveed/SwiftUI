//
//  HomeView.swift
//  FirstSwiftUI
//
//  Created by Atif on 19/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            
            VStack(alignment: .leading) {
                Text("Hello World")
                    .font(.largeTitle)
                    .foregroundColor(Color.green)
                HStack(alignment: .top) {
                    Text("This is first Swift UI Demo")
                    Spacer()
                    Text("14 Aug 2019")
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
