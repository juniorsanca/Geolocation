//
//  ViewController.swift
//  Localisations
//
//  Created by User on 07/04/2022.
//

import UIKit
import CoreLocation

class GeolocalisationViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()

    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    
    @IBOutlet weak var geolocButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    // Mark : lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func startLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
        locationManager.startUpdatingLocation()
    }
    
    func stopLocationManager() {
        
    }
    
    //Mark : Actions
    @IBAction func getLocation(_ sender: Any) {
        let authStatus = locationManager.authorizationStatus
        if authStatus == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
            return
        } else {
            //TODO
        }
        startLocationManager()
    }
    
    // Mark : Geoloc Delegate
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last
        print("didUpdateLocations: \(location)")
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("didFailWithErros")

    }


}

