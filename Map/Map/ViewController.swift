//
//  ViewController.swift
//  Map
//
//  Created by Moussa SOW on 20/04/2021.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    var manager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupManager()
        
    }


    @IBAction func typeOfMap(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            map.mapType = .standard
        case 1: map.mapType = .satellite
        case 2: map.mapType = .hybrid
        case 3: map.mapType = .hybridFlyover
        default:
            return
        }
    }
}

