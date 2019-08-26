//
//  ViewModel.swift
//  SwiftUIMVVM
//
//  Created by Atif on 25/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ViewModel: ObservableObject {
//    let didChange = PassthroughSubject<ViewModel, Never>()
    let objectWillChange = ObservableObjectPublisher()

    var amount: String = "100" {
        willSet { self.objectWillChange.send() }
    }
    var selectedIndex: Int = 0 {
        willSet { self.objectWillChange.send() }
    }

// 1
//    var calculatedValue: Double?

// 2
//    var calculatedValue: Double = 0 {
//      didSet { self.didChange.send(self)}
//    }

// 3
    var calculatedValue: Double = 0 {
        willSet { self.objectWillChange.send() }
    }
    
// 4
// @Published var selectedValue: Double = 0
    

    let options:Array<Int> = [10, 20, 30, 40, 50, 60]
    
    func calculate() {
        guard let amount = Double(amount) else {
            return
        }
        self.calculatedValue = amount * (Double(options[selectedIndex]) / 100)
  //      self.didChange.send(self)
        
    }
}

