//
//  CircleImage.swift
//  FirstSwiftUI
//
//  Created by Atif on 19/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Image").frame(width: 300, height: 300)
        .aspectRatio(contentMode: .fit)
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 5))
        .shadow(radius: 10)

    }
}

#if DEBUG
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
