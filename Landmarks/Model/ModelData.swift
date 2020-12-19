//
//  Data.swift
//  Landmarks
//
//  Created by Lukasz Stachnik on 19/12/2020.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks : [Landmark] = load("landmarkData")
    var hikes : [Hike] = load("hikeData")
}

func load<T: Decodable>(_ filename: String) -> T {
    
    let data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: "json")
    else {
        fatalError("Could't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    }
    catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
}
