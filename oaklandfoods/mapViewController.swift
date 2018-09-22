//
//  mapViewController.swift
//  oaklandfoods
//
//  Created by HGPMAC39 on 8/2/18.
//  Copyright © 2018 HGPMAC39. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class mapViewController: UIViewController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        GMSServices.provideAPIKey("AIzaSyBG1XLDeHJUnceCPxRrzsZjw2Bga6DPaJI")
        let camera  = GMSCameraPosition.camera(withLatitude:37.891601 , longitude:-122.278564 , zoom:15.0 )
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        self.view = mapView
        
     
       
        let marker = GMSMarker(position: CLLocationCoordinate2D(latitude:37.891601 , longitude: -122.278564 ))
        marker.title = "zachary's Chicago pizza"
        marker.snippet = "5 stars"
        marker.map = mapView
        // Do any additional setup after loading the view.
}

}
