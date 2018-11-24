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
  
  var restaurants: [Restaurant] = [Restaurant(nombre: "HALO!")]
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}


extension RestaurantsViewController: UITableViewDelegate{
  
}


extension RestaurantsViewController: UITableViewDataSource{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return restaurants.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableview.dequeueReusableCell(withIdentifier: "cell")!
    
    cell.textLabel?.text = "HALOS"
    
    return cell
  }
  
  
}
