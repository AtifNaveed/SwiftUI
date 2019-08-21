//
//  StaticListView.swift
//  ListSwiftUI
//
//  Created by Atif on 20/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import SwiftUI

struct StaticList: View {
    var body: some View {
        List{
            ItemRow(item:                     Item(title: "Karachi", detail: "Pakistan"))
            ItemRow(item:Item(title: "Abu Dubai", detail: "United Arab Emirates"))
            ItemRow(item:Item(title: "Los Angeles", detail: "United States"))
            ItemRow(item:Item(title: "Calgary", detail: "Canada"))
            ItemRow(item:Item(title: "Melbourne", detail: "Australia"))
        }
    }
}

#if DEBUG
struct StaticList_Previews: PreviewProvider {
    static var previews: some View {
        StaticList()
    }
}
#endif
