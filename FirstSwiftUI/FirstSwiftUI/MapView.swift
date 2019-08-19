//
//  MapView.swift
//  FirstSwiftUI
//
//  Created by Atif on 19/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        
        let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated:true)
       }
       
}

#if DEBUG
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
