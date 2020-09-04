//
//  MapViewController.swift
//  Dashboard
//
//  Created by Gustaf Holmström on 2019-09-29.
//  Copyright © 2019 Waleed Hassan. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Map setup
        // Map rounded corner
        mapView.layer.cornerRadius = 10.0;
        checkLocationAccess()
        
        if CLLocationManager.authorizationStatus() == .authorizedAlways || CLLocationManager.authorizationStatus() == .authorizedWhenInUse || CLLocationManager.authorizationStatus() == .notDetermined   {
            getRoute(adress: "Roslagsgatan 35, Stockholm")
        }
    }
    
    func getRoute(adress: String){
        lookUpCurrentLocation { (placemark) in
            if placemark == nil{
                return
            }
            self.getCoordinate(addressString: adress, completionHandler: { (dest, error) in
                guard error == nil else{
                    print("Error finding user location.")
                    return
                }
                let request = self.createDirectionsFromRequest(from: (placemark?.location!.coordinate)!, to: dest)
                let directions = MKDirections(request: request)
                
                directions.calculate(completionHandler: { (response, error) in
                    guard let response = response else { return }
                    self.mapView.addOverlay(response.routes.first!.polyline)
                    self.mapView.setVisibleMapRect(response.routes.first!.polyline.boundingMapRect, animated: true)
                    
                    
                    let destinationMarker = MKPointAnnotation()
                    destinationMarker.title = adress
                    destinationMarker.coordinate = dest
                    self.mapView.addAnnotation(destinationMarker)
                })
            })
        }
    }
    
    
    func getCoordinate( addressString : String, completionHandler: @escaping(CLLocationCoordinate2D, NSError?) -> Void ) {
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(addressString) { (placemarks, error) in
            if error == nil {
                if let placemark = placemarks?[0] {
                    let location = placemark.location!
                    
                    completionHandler(location.coordinate, nil)
                    return
                }
            }
            completionHandler(kCLLocationCoordinate2DInvalid, error as NSError?)
        }
    }
    
    func lookUpCurrentLocation(completionHandler: @escaping (CLPlacemark?)
        -> Void ) {
        // Use the last reported location.
        
        if let lastLocation = self.locationManager.location {
            let geocoder = CLGeocoder()
            
            // Look up the location and pass it to the completion handler
            geocoder.reverseGeocodeLocation(lastLocation,
                                            completionHandler: { (placemarks, error) in
                                                if error == nil {
                                                    let firstLocation = placemarks?[0]
                                                    completionHandler(firstLocation)
                                                }
                                                else {
                                                    // An error occurred during geocoding.
                                                    completionHandler(nil)
                                                }
            })
        }
        else {
            // No location was available.
            completionHandler(nil)
        }
    }

    
    func createDirectionsFromRequest(from coordinate: CLLocationCoordinate2D, to destCoordinate: CLLocationCoordinate2D) -> MKDirections.Request{
        
        let request = MKDirections.Request()
        
        request.source = MKMapItem(placemark: MKPlacemark(coordinate: coordinate))
        request.destination = MKMapItem(placemark: MKPlacemark(coordinate: destCoordinate))
        
        request.transportType = .automobile
        request.requestsAlternateRoutes = true
        
        return request

    }
    
    
    
    
    func checkLocationAccess(){
        if CLLocationManager.locationServicesEnabled(){
            setupLoactionManager()
            checkLocationManagerAuthorization()
        }else{
            print("location access is denied")
            checkLocationManagerAuthorization()
        }
    }

    
    func checkLocationManagerAuthorization(){
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
            locationManager.startUpdatingLocation()
        case .denied:
            locationManager.requestWhenInUseAuthorization()
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            locationManager.requestWhenInUseAuthorization()
            break
        case .authorizedAlways:
            break
        @unknown default:
            print("Fatal error")
        }
    }
    
    func setupLoactionManager(){
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
}

extension MapViewController: MKMapViewDelegate{
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(overlay: overlay as! MKPolyline)
        renderer.strokeColor = .blue
        
        return renderer
    }
    
    
}
