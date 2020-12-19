//
//  ContentView.swift
//  Landmarks
//
//  Created by Lukasz Stachnik on 18/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
