//
//  RaitingViewController.swift
//  comensal
//
//  Created by zcrome on 11/23/18.
//  Copyright © 2018 zcrome. All rights reserved.
//

import UIKit

import Eureka

class RaitingViewController: FormViewController {
  
  var restaurant: Restaurant = Restaurant()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    form +++ Section("Ingrese los siguientes campos")
      <<< TextAreaRow(){ row in
        row.title = "Satisfacción"
        row.placeholder = "Comente su satisfacción"
        row.tag = "1"
      }
      <<< TextAreaRow(){ row in
        row.title = "Comida Solicitada"
        row.placeholder = "Comente sobre la comida que solicitó"
        row.tag = "2"
      }
      <<< IntRow(){ row in
        row.title = "Número de comensales"
        row.placeholder = "Cuantas personas asistieron"
        row.tag = "3"
      }
      <<< TextAreaRow(){ row in
        row.title = "¿Tiene quejas?"
        row.placeholder = "Tiene alguna queja"
        row.tag = "4"
        
      }
      
      <<< TextAreaRow(){ row in
        row.title = "¿Sugerencias?"
        row.placeholder = "Tiene alguna sugerencia"
        row.tag = "5"
        
        
      }
      
      <<< ButtonRow(){
        $0.title = "Guardar"
        
        }.onCellSelection {  cell, row in
          
          let satisfaccion: TextAreaRow? = self.form.rowBy(tag: "1")
          let comidaSolicitada: TextAreaRow? = self.form.rowBy(tag: "2")
          let numeroComensales: IntRow? = self.form.rowBy(tag: "3")
          let tieneQuejas: TextAreaRow? = self.form.rowBy(tag: "4")
          let sugerencias: TextAreaRow? = self.form.rowBy(tag: "5")
          
          
          
          
          let raiting = Raiting(satisfaccion: satisfaccion!.value!,
                                comidaSolicitada: comidaSolicitada!.value!,
                                numeroComensales: "\(numeroComensales!.value!)" ,
                                quejas: tieneQuejas!.value!,
                                sugerencias: sugerencias!.value!,
                                comensalId: Comensal.share.idUser,
                                restaurantId: self.restaurant.id)
          
          
          TodoEndPoint.createRaiting(withTodo: raiting, userId: Comensal.share.idUser, restaurantId: self.restaurant.id, completionHandler: { (id, error) in
            if let id = id{
              self.navigationController?.popViewController(animated: true)
            }
          })
          
    }
    
  }
  
}
