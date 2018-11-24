//
//  MenuViewController.swift
//  comensal
//
//  Created by zcrome on 11/23/18.
//  Copyright © 2018 zcrome. All rights reserved.
//

import UIKit
import ILLoginKit



class MenuViewController: UIViewController {

  lazy var loginCoordinator: LoginCoordinator = {
  return LoginCoordinator(rootViewController: self)
  }()
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    loginCoordinator.delegateCoord = self
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    
    
    loginCoordinator.start()
  }
  
  func topMostController() -> UIViewController {
    var topController: UIViewController = UIApplication.shared.keyWindow!.rootViewController!
    while (topController.presentedViewController != nil) {
      topController = topController.presentedViewController!
    }
    return topController
  }

}


extension MenuViewController: LoginCoordinatorDelegate{
  func redirectToMain() {
    
    let controller = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController")
    
    
    let topVC = topMostController()
    topVC.present(controller!, animated: true, completion: nil)
  }
  
  func redirectoToList() {
    let controller = self.storyboard?.instantiateViewController(withIdentifier: "navRestaurants")
    
    let topVC = topMostController()
    topVC.present(controller!, animated: true, completion: nil)
  }
  
  
}


