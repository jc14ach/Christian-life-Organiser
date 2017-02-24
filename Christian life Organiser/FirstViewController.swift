//
//  FirstViewController.swift
//  Christian life Organiser
//
//  Created by jc14ach on 13/02/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class FirstViewController: UIViewController {

   
    @IBOutlet weak var map: MKMapView!
    
    func mapAnnotation(){
    
    let homeCoordinates = CLLocationCoordinate2DMake(51.753312, -0.24082080)
    let homeAnnotation = MKPointAnnotation()
    homeAnnotation.title = "home church"
    homeAnnotation.coordinate = homeCoordinates
    map.addAnnotation(homeAnnotation)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

