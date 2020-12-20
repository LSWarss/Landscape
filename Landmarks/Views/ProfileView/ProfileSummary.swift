//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Lukasz Stachnik on 19/12/2020.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData : ModelData
    var profile : Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notification: \(profile.prefersNotification ? "On" : "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Complete Badges")
                        .font(.headline)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 99))
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(/*@START_MENU_TOKEN@*/0.50/*@END_MENU_TOKEN@*/)
                                .hueRotation(Angle(degrees: 50))
                        }
                        .padding(.bottom)
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading){
                    Text("Recent Hikes")
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
