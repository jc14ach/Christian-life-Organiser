//
//  FirstViewController.swift
//  Christian life Organiser
//
//  Created by jc14ach on 13/02/2017.
//  Copyright © 2017 jc14ach. All rights reserved.
//  id<CLocationManagerDelegate>
//

import UIKit
import MapKit
//import CoreLocation

class FirstViewController: UIViewController, UISearchBarDelegate, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var locationName: UILabel!
    
    var Hatfield: [String] = ["Home Church", "Forest Town Church", "Christ Church","","",""]
    var identities : [String] = ["A","B","C","D","E","F","G"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(Hatfield.count)
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default , reuseIdentifier: "cell")
        cell.textLabel?.text = Hatfield[indexPath.row]
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier:  vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
    }
    
    // church results
    //let Hatfield: [String] = ["Home Church"]
    
    // varibles for mapkit
    var searchController:UISearchController!
    var annotation:MKAnnotation!
    var localSearchRequest:MKLocalSearchRequest!
    var localSearch:MKLocalSearch!
    var localSearchResponse:MKLocalSearchResponse!
    var error:NSError!
    var pointAnnotation:MKPointAnnotation!
    var pinAnnotationView:MKPinAnnotationView!
    
    @IBOutlet weak var TableView: UITableView!
    @IBAction func showSearchBar(_ sender: Any) {
        
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.hidesNavigationBarDuringPresentation = false
        self.searchController.searchBar.delegate = self
        present(searchController, animated: true, completion: nil)

    }
    
    @IBOutlet weak var mapView: MKMapView!
    
   
    
   /** func mapAnnotation(){
    
    let homeCoordinates = CLLocationCoordinate2DMake(51.753312, -0.24082080)
    let homeAnnotation = MKPointAnnotation()
    homeAnnotation.title = "home church"
    homeAnnotation.coordinate = homeCoordinates
    map.addAnnotation(homeAnnotation)
        
   } */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let coordinate:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: 34.03, longitude: 118.14)
        let span = MKCoordinateSpanMake(5, 5)
        let region = MKCoordinateRegionMake(coordinate, span)
        self.mapView.setRegion(region, animated: true)
        self.TableView.isHidden = true
        locationName.isHidden = true
       
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // function for map search
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
        //1
        searchBar.resignFirstResponder()
        dismiss(animated: true, completion: nil)
        if self.mapView.annotations.count != 0{
            annotation = self.mapView.annotations[0]
            self.mapView.removeAnnotation(annotation)
        }
        //2
        localSearchRequest = MKLocalSearchRequest()
        localSearchRequest.naturalLanguageQuery = searchBar.text
        localSearch = MKLocalSearch(request: localSearchRequest)
        localSearch.start { (localSearchResponse, error) -> Void in
            
            if localSearchResponse == nil{
                let alertController = UIAlertController(title: nil, message: "Place Not Found", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default, handler: nil))
                self.present(alertController, animated: true, completion: nil)
                return
            }
            //3
            self.pointAnnotation = MKPointAnnotation()
            self.pointAnnotation.title = searchBar.text
            self.pointAnnotation.coordinate = CLLocationCoordinate2D(latitude: localSearchResponse!.boundingRegion.center.latitude, longitude:     localSearchResponse!.boundingRegion.center.longitude)
            
            
            self.pinAnnotationView = MKPinAnnotationView(annotation: self.pointAnnotation, reuseIdentifier: nil)
            self.mapView.centerCoordinate = self.pointAnnotation.coordinate
            self.mapView.addAnnotation(self.pinAnnotationView.annotation!)
            
            let allAnnotations = self.mapView.annotations
            
            // text view options
            if searchBar.text ==  "Hatfield" {
                // sets view table and map for hatfield results
                self.locationName.isHidden = false
                self.locationName.text = "Hatfield"
                self.identities.removeAll()
                self.identities.append("A")
                self.identities.append("B")
                self.identities.append("C")
                self.Hatfield.removeAll()
                self.Hatfield.append("Home Church")
                self.Hatfield.append("Forest Town Church")
                self.Hatfield.append("Christ Church")
                self.TableView.reloadData()
                self.TableView.isHidden = false
                self.mapView.removeAnnotations(allAnnotations)
                
                let homeCoordinates = CLLocationCoordinate2DMake(51.753312, -0.24082080)
                let homeAnnotation = MKPointAnnotation()
                homeAnnotation.title = "home church"
                homeAnnotation.coordinate = homeCoordinates
                self.mapView.addAnnotation(homeAnnotation)
                
                let forestCordinates = CLLocationCoordinate2DMake(51.752394,-0.273086)
                let forestAnnotation = MKPointAnnotation()
                forestAnnotation.title = "Forest Town Church"
                forestAnnotation.coordinate = forestCordinates
                self.mapView.addAnnotation(forestAnnotation)
                
                let christCoordinates = CLLocationCoordinate2DMake(51.766618,-0.217570)
                let christAnnotation = MKPointAnnotation()
                christAnnotation.title = "Christ Church"
                christAnnotation.coordinate = christCoordinates
                self.mapView.addAnnotation(christAnnotation)
                }
            
            
                if searchBar.text == "Watford" {
                    self.locationName.isHidden = false
                    self.locationName.text = "Watford"
                    self.identities.removeAll()
                    self.identities.append("D")
                    self.identities.append("E")
                    self.identities.append("F")
                    self.Hatfield.removeAll()
                    self.Hatfield.append("Soul Survivour")
                    self.Hatfield.append("Wellspring Church")
                    self.Hatfield.append("Christ First Watford")
                    self.TableView.reloadData()
                    self.TableView.isHidden = false
                    self.mapView.removeAnnotations(allAnnotations)
                    
                    let homeCoordinates = CLLocationCoordinate2DMake(51.676733, -0.388378)
                    let homeAnnotation = MKPointAnnotation()
                    homeAnnotation.title = "Soul Survivour"
                    homeAnnotation.coordinate = homeCoordinates
                    self.mapView.addAnnotation(homeAnnotation)
                    
                    let forestCordinates = CLLocationCoordinate2DMake(51.651745, -0.391425)
                    let forestAnnotation = MKPointAnnotation()
                    forestAnnotation.title = "Wellspring Church"
                    forestAnnotation.coordinate = forestCordinates
                    self.mapView.addAnnotation(forestAnnotation)
                    
                    let christCoordinates = CLLocationCoordinate2DMake(51.660939, -0.410428)
                    let christAnnotation = MKPointAnnotation()
                    christAnnotation.title = "Christ First Watford"
                    christAnnotation.coordinate = christCoordinates
                    self.mapView.addAnnotation(christAnnotation)
                
                }
                else{
                   /** self.locationName.isHidden = true
                    self.mapView.removeAnnotations(allAnnotations)
                    self.Hatfield.removeAll()

                    self.TableView.reloadData()*/
            }
    
                        
            
            }
       
        }
    }
    
   
    


