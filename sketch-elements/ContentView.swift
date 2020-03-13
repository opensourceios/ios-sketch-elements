//
//  ContentView.swift
//  sketch-elements
//
//  Created by Filip Molcik on 12/03/2020.
//  Copyright © 2020 Filip Molcik. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var modalManager: ModalManager
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        return ZStack {
            FoodView(categories: recipeCategoriesData)
            ModalView(currentModal: $modalManager.modal).environmentObject(self.modalManager)
        }
    }
}