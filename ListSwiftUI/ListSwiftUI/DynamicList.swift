//
//  DynamicList.swift
//  ListSwiftUI
//
//  Created by Atif on 20/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import SwiftUI

struct DynamicList: View {
    var body: some View {
       let array = [
                    Item(title: "Lahore", detail: "Pakistan"),
                    Item(title: "Dubai", detail: "United Arab Emirates"),
                    Item(title: "New York", detail: "United States"),
                    Item(title: "Toronto", detail: "Canada"),
                    Item(title: "Sydney", detail: "Australia")
                  ]
    return List (array) { item in
        NavigationLink(destination: DetailView(item: item).navigationBarTitle("Detail", displayMode: .inline)) {
                ItemRow(item: item)
            }
        }
    }
}

#if DEBUG
struct DynamicList_Previews: PreviewProvider {
    static var previews: some View {
        DynamicList()
    }
}
#endif

