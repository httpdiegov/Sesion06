//
//  Model.swift
//  Sesion06
//
//  Created by Alumno on 14/05/24.
//

import Foundation
class cursosModel: ObservableObject{
    @Published var cursos:[String] = []
    init(){
        cursos +=
        ["Matematicas","Lenguaje","Historia"]
    }
    func agregar(){
        cursos +=
        ["Android"]
    }
    func eliminar(){
        cursos.remove(at:0)
    }
}
