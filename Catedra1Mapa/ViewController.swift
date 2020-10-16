//
//  ViewController.swift
//  Catedra1Mapa
//
//  Created by Maury Marin on 10/7/20.
//  Copyright © 2020 Maury Marin. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var mapTypeSegmentedControl: UISegmentedControl!
    
    @IBAction func changeMapType(_ sender: Any) {
        switch mapTypeSegmentedControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .satellite
        default:
            break
        }
        
    }
    
    let point = Point()
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.addAnnotations(point.pointAnn)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        locationAuthorizate()
    }
    
    func locationAuthorizate(){
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            mapView.showsUserLocation = true
        }else{
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
  }

