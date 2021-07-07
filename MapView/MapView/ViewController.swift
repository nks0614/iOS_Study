//
//  ViewController.swift
//  MapView
//
//  Created by nkstar on 2021/07/07.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var locationInfoLabel1: UILabel!
    @IBOutlet weak var locationInfoLabel2: UILabel!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationInfoLabel1.text = ""
        locationInfoLabel2.text = ""
        locationManager.delegate = self
        // 위치 정확도를 최고로 설정
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        // 위치 데이터를 사용하기 위해 사용자에게 승인을 요구
        locationManager.requestWhenInUseAuthorization()
        // 위치 업데이트를 시작
        locationManager.startUpdatingLocation()
        map.showsUserLocation = true
    }


    func goLocation(latitude: CLLocationDegrees, longitude: CLLocationDegrees, delta span: Double) -> CLLocationCoordinate2D {
        let pLocation = CLLocationCoordinate2DMake(latitude, longitude)
        let spanValue = MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
        let pRegion = MKCoordinateRegion(center: pLocation, span: spanValue)
        map.setRegion(pRegion, animated: true)
        return pLocation
    }
    
    func setAnnotation(latitude: CLLocationDegrees, longitude: CLLocationDegrees, delta span: Double, title strTitle: String, subtitle strSubTitle: String) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = goLocation(latitude: latitude, longitude: longitude, delta: span)
        annotation.title = strTitle
        annotation.subtitle = strSubTitle
        map.addAnnotation(annotation)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let pLocation = locations.last
        // delta 값은 지도의 크기를 정하는데, 값이 작을수록 확대되는 효과가 있음.
        _ = goLocation(latitude: (pLocation?.coordinate.latitude)!, longitude: (pLocation?.coordinate.longitude)!, delta: 0.01)
        CLGeocoder().reverseGeocodeLocation(pLocation!, completionHandler: {
            (placemarks, error) -> Void in
            let pm = placemarks!.first
            let country = pm!.country
            var address: String = country!
            if pm!.locality != nil {
                address += " "
                address += pm!.locality!
            }
            if pm!.thoroughfare != nil {
                address += " "
                address += pm!.thoroughfare!
            }
            
            self.locationInfoLabel1.text = "현재 위치"
            self.locationInfoLabel2.text = address
        })
        
        locationManager.stopUpdatingLocation()
        
    }
    
    @IBAction func changeSegment(_ sender: Any) {
        let s = sender as! UISegmentedControl
        
        if s.selectedSegmentIndex == 0 {
            self.locationInfoLabel1.text = ""
            self.locationInfoLabel2.text = ""
            locationManager.startUpdatingLocation()
        } else if s.selectedSegmentIndex == 1 {
            setAnnotation(latitude: 37.49922, longitude: 127.03592, delta: 0.1, title: "진모빌리티", subtitle: "회사")
            self.locationInfoLabel1.text = "보고 계신 위치"
            self.locationInfoLabel2.text = "진모빌리티"
        } else if s.selectedSegmentIndex == 2 {
            setAnnotation(latitude: 37.47778, longitude: 126.97686, delta: 0.1, title: "집", subtitle: "사당동 419-144")
            self.locationInfoLabel1.text = "보고 계신 위치"
            self.locationInfoLabel2.text = "집"
        }
    }
}

