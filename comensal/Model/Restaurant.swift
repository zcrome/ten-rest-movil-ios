//
//  File.swift
//  comensal
//
//  Created by zcrome on 11/23/18.
//  Copyright © 2018 zcrome. All rights reserved.
//

import Foundation
import SwiftyJSON

class Restaurant{
  
  var nombre: String
  var id: String
  
  init(nombre: String, id: String) {
    self.nombre = nombre
    self.id = id
  }
  
  init(){
    self.nombre = ""
    self.id = ""
  }
  
  
  static func from(json: JSON) -> Restaurant {
    return Restaurant(nombre: json["nombre"].stringValue, id: json["id"].stringValue)
  }
  
  static func from(jsonArray: [JSON]) -> [Restaurant] {
    var resultArray: [Restaurant] = []
    for jsonTodo in jsonArray {
      resultArray.append(Restaurant.from(json: jsonTodo))
    }
    return resultArray
  }
  
}
