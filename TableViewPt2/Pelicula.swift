//
//  Pelicula.swift
//  TableViewPt2
//
//  Created by equipo on 9/18/19.
//  Copyright © 2019 equipo. All rights reserved.
//

import Foundation

class Pelicula
{
    var titulo: String
    var director: String
    var año : Int
    
    init(titulo : String, director : String, año : Int) {
        self.titulo = titulo
        self.director = director
        self.año = año
    }
}
