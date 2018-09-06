//
//  VisitedPlacesViewController.swift
//  PlacesWithLuis
//
//  Created by Ilgar Ilyasov on 9/6/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlacesPresenter, PlaceSelectionDelegate {

    var placeController: PlaceContoller?
    var placeTableViewController: PlacesTableViewController?
    var mapViewController: MapViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func placeWasSelected(place: Place) {
        mapViewController?.location = place.location
        
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "MapViewSegue" {
            
            guard let mapVC = segue.destination as? MapViewController else { return }
            mapViewController = mapVC
            
        } else if segue.identifier == "PlacesTableSegue" {
            
            guard let placesTVC = segue.destination as? PlacesTableViewController else { return }
            placesTVC.placeController = placeController
            placesTVC.delegate = self
            placeTableViewController = placesTVC
        }
    }
}
