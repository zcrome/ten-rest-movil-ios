//
//  RestaurantsViewController.swift
//  comensal
//
//  Created by zcrome on 11/23/18.
//  Copyright © 2018 zcrome. All rights reserved.
//

import UIKit

class RestaurantsViewController: UIViewController {

  
  @IBOutlet weak var tableview: UITableView!
  
  var restaurants: [Restaurant] = []
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      TodoEndPoint.getRestaurants { (restaurants, error) in
        
        if let restaurants = restaurants{
          self.restaurants = restaurants
          self.tableview.reloadData()
        }
      }
      
    }
  

}






extension RestaurantsViewController: UITableViewDelegate{
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    let controller = storyboard?.instantiateViewController(withIdentifier: "RaitingViewController") as! RaitingViewController
    
    controller.restaurant = restaurants[indexPath.row]
    
    self.navigationController?.pushViewController(controller, animated: true)
    
  }
  
}


extension RestaurantsViewController: UITableViewDataSource{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return restaurants.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableview.dequeueReusableCell(withIdentifier: "cell")!
    
    cell.textLabel?.text = restaurants[indexPath.row].nombre
    
    return cell
  }
  
  
}
