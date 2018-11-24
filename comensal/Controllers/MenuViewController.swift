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
  
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    loginCoordinator.start()
  }

  
  
  
}


