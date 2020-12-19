//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Lukasz Stachnik on 19/12/2020.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet : Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.blue)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
