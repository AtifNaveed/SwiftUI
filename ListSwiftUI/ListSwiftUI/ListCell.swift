//
//  ListCell.swift
//  ListSwiftUI
//
//  Created by Atif on 20/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import SwiftUI

struct ListCell: View {
    var title: String
    var detail: String

    var body: some View {
        VStack(alignment: .leading) {
            Text("\(title)").bold()
            Text("\(detail)")
        }
    }
}

#if DEBUG
struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell(title: "City", detail: "Country")
    }
}
#endif
