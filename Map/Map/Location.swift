//
//  Location.swift
//  Map
//
//  Created by Moussa SOW on 20/04/2021.
//

import CoreLocation
import MapKit

extension ViewController: CLLocationManagerDelegate {
    
    func setupManager() {
        manager.delegate = self
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()
    }
    
    
    //
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
        case .authorizedAlways: print("always")
        case .authorizedWhenInUse: print("when use")
        case .denied: print("denied")
        case .notDetermined: print("not det")
        case .restricted: print("restru")
        default: print("other")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let first = locations.first {
            let coordinate = first.coordinate
            print("Coordonnées: \(coordinate)")
            let center: CLLocationCoordinate2D = coordinate
            let delta = 0.1
            
            let span = MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
            let region = MKCoordinateRegion(center: center, span: span)
            map.setRegion(region, animated: true)
        }
    }
}
