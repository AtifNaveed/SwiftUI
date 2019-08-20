//
//  StaticListView.swift
//  ListSwiftUI
//
//  Created by Atif on 20/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import SwiftUI

struct StaticListView: View {
    var body: some View {
        List{
            ListCell(title: "Lahore", detail: "Pakistan")
            ListCell(title: "Dubai", detail: "United Arab Emirates")
            ListCell(title: "New York", detail: "United States")
            ListCell(title: "Toronto", detail: "Canada")
            ListCell(title: "Sydney", detail: "Australia")
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StaticListView()
    }
}
#endif
