//
//  PlacesTabBarController.swift
//  PlacesWithLuis
//
//  Created by Ilgar Ilyasov on 9/6/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PlacesTabBarController: UITabBarController {

    let placeController = PlaceContoller()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for childVC in childViewControllers {
            
            if let childVC = childVC as? PlacesPresenter {
                childVC.placeController = placeController
            }
        }
    }
}
