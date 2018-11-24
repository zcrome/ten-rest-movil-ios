//
//  Raiting.swift
//  comensal
//
//  Created by zcrome on 11/24/18.
//  Copyright © 2018 zcrome. All rights reserved.
//

import Foundation


class Raiting{
  
  
  var satisfaccion: String
  var comidaSolicitada: String
  var numeroComensales: String
  var quejas: String
  var sugerencias: String
  var comensalId: String
  var restaurantId: String
  
  
  init(satisfaccion: String,
  comidaSolicitada: String,
  numeroComensales: String,
  quejas: String,
  sugerencias: String,
  comensalId: String,
  restaurantId: String){
    
    self.satisfaccion = satisfaccion
    self.comidaSolicitada = comidaSolicitada
    self.numeroComensales = numeroComensales
    self.quejas = quejas
    self.sugerencias = sugerencias
    self.comensalId = comensalId
    self.restaurantId = restaurantId
  }
  
  
}
