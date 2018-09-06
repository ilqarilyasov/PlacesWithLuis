//
//  CreateNewPlacesViewController.swift
//  PlacesWithLuis
//
//  Created by Ilgar Ilyasov on 9/6/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class CreateNewPlacesViewController: UIViewController, PlacesPresenter {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longituteTextField: UITextField!
    
    var placeController: PlaceContoller?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func savePlaceButtonAction(_ sender: Any) {
        guard let name = nameTextField.text,
              let latitudeStr = latitudeTextField.text,
              let latitude = Double(latitudeStr),
              let longitudeStr = longituteTextField.text,
              let longitude = Double(longitudeStr) else { return }
        
        placeController?.createPlace(with: name, latitude: latitude, longitude: longitude)
    }
}
