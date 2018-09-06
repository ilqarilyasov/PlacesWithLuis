//
//  PlaceController.swift
//  PlacesWithLuis
//
//  Created by Ilgar Ilyasov on 9/6/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class PlaceContoller {
    
    private(set) var places:[Place] = []
    
    // Create
    func createPlace(with name: String, latitude: Double, longitude: Double) {
        let newPlace = Place(name: name, latitude: latitude, longitude: longitude)
        places.append(newPlace)
    }
}
