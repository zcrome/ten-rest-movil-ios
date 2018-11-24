//
//  Extensions.swift
//  comensal
//
//  Created by zcrome on 11/23/18.
//  Copyright © 2018 zcrome. All rights reserved.
//
import Foundation
import ILLoginKit

class LoginCoordinator: ILLoginKit.LoginCoordinator {
  
  // MARK: - LoginCoordinator
  
  override func start(animated: Bool = true) {
    configureAppearance()
    super.start(animated: animated)
  }
  
  override func finish(animated: Bool = true) {
    super.finish(animated: animated)
  }
  
  func configureAppearance() {
    

//    configuration.backgroundImage = #imageLiteral(resourceName: "Background")
    // mainLogoImage =
    // secondaryLogoImage =
    
    // Change colors
    configuration.tintColor = UIColor(red: 52.0/255.0, green: 152.0/255.0, blue: 219.0/255.0, alpha: 1)
    configuration.errorTintColor = UIColor(red: 253.0/255.0, green: 227.0/255.0, blue: 167.0/255.0, alpha: 1)
    
    // Change placeholder & button texts, useful for different marketing style or language.
    configuration.loginButtonText = "Ingresar"
    configuration.signupButtonText = "Crear Cuenta"
    configuration.facebookButtonText = ""
    configuration.shouldShowFacebookButton = false
    configuration.shouldShowForgotPassword = false
    
    
    configuration.forgotPasswordButtonText = ""
    configuration.recoverPasswordButtonText = ""
    configuration.namePlaceholder = "Nombre Completo"
    configuration.emailPlaceholder = "E-Mail"
    configuration.passwordPlaceholder = "Contraseña"
    configuration.repeatPasswordPlaceholder = "Confirmar Contraseña"
    configuration.loginButtonText = "Ingresar"
    configuration.signupButtonText = "Registrarse"
    
  }
  
  // MARK: - Completion Callbacks
  
  // Handle login via your API
  override func login(email: String, password: String) {
    print("Login with: email =\(email) password = \(password)")
    
  }
  
  // Handle signup via your API
  override func signup(name: String, email: String, password: String) {
    print("Signup with: name = \(name) email =\(email) password = \(password)")
  }
  
  // Handle Facebook login/signup via your API
  override func enterWithFacebook(profile: FacebookProfile) {
    print("Login/Signup via Facebook with: FB profile =\(profile)")
  }
  
  // Handle password recovery via your API
  override func recoverPassword(email: String) {
    print("Recover password with: email =\(email)")
  }
  
}
