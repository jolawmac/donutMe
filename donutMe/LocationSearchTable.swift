//
//  LocationSearchTable.swift
//  donutMe
//
//  Created by Josh & Erica on 3/14/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import UIKit
import MapKit

class LocationSearchTable: UITableViewController {
    
    weak var handleMapSearchDelegate: HandleMapSearch? = nil
    // Placehold for results
    var matchingItems: [MKMapItem] = [MKMapItem]()
    var mapView: MKMapView?
    
    // Converts the placemark to a normal address
    func parseAddress(_ selectedItem:MKPlacemark) -> String {
        
        // Example: put a space between "4" and "Melrose Place"
        let firstSpace = (selectedItem.subThoroughfare != nil &&
            selectedItem.thoroughfare != nil) ? " " : ""
        
        // put a comma between street and city/state
        let comma = (selectedItem.subThoroughfare != nil || selectedItem.thoroughfare != nil) &&
            (selectedItem.subAdministrativeArea != nil || selectedItem.administrativeArea != nil) ? ", " : ""
        
        // put a space between "Washington" and "DC"
        let secondSpace = (selectedItem.subAdministrativeArea != nil &&
            selectedItem.administrativeArea != nil) ? " " : ""
        
        let addressLine = String(
            format:"%@%@%@%@%@%@%@",
            // street number
            selectedItem.subThoroughfare ?? "",
            firstSpace,
            // street name
            selectedItem.thoroughfare ?? "",
            comma,
            // city
            selectedItem.locality ?? "",
            secondSpace,
            // state
            selectedItem.administrativeArea ?? ""
        )
        
        return addressLine
    }
    
}

extension LocationSearchTable : UISearchResultsUpdating, UISearchBarDelegate {
    
    func updateSearchResults(for searchController: UISearchController) {
        
        guard let mapView = mapView,
            let searchBarText = searchController.searchBar.text else { return }
        // Search request that is made up of a string from the search bar, map region comes from mapView
        let request = MKLocalSearchRequest()
        request.naturalLanguageQuery = searchBarText
        request.region = mapView.region
        let search = MKLocalSearch(request: request)
        // executes query and returns a MKLocalSearchResponse object which contains an array of mapItems that are then stashed into placeholder
        search.start { response, _ in
            guard let response = response else {
                return
            }
            for item in response.mapItems {
                self.matchingItems = response.mapItems
                self.tableView.reloadData()
            }
        }
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        guard let mapView = mapView else { return }
        
        mapView.removeAnnotations(mapView.annotations)
        
        
        let request = MKLocalSearchRequest()
        request.naturalLanguageQuery = searchBar.text
        request.region = mapView.region
        let search = MKLocalSearch(request: request)
        // executes query and returns a MKLocalSearchResponse object which contains an array of mapItems that are then stashed into placeholder
        search.start { response, _ in
            guard let response = response else {
                return
            }
            
            for item in response.mapItems {
                
                let placemark = item.placemark
                
                let annotation = MKPointAnnotation()
                annotation.coordinate = placemark.coordinate
                annotation.title = placemark.name
                
                if let city = placemark.locality,
                    let state = placemark.administrativeArea {
                    annotation.subtitle = "\(city) \(state)"
                }
                DispatchQueue.main.async {
                    
                    mapView.addAnnotation(annotation)
                    self.dismiss(animated: true, completion: nil)
                }
                
                print("This is getting called.")
            }
        }
    }
}

extension LocationSearchTable {
    
    // returns the number from the search
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matchingItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else { return UITableViewCell() }
        let selectedItem = matchingItems[indexPath.row].placemark
        cell.textLabel?.text = selectedItem.name
        // call the above function to parse address
        cell.detailTextLabel?.text = parseAddress(selectedItem)
        return cell
    }
    
}

extension LocationSearchTable {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = matchingItems[indexPath.row].placemark
        handleMapSearchDelegate?.dropPinZoomIn(selectedItem)
        dismiss(animated: true, completion: nil)
    }
    
}
