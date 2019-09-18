//
//  ViewController.swift
//  TableViewPt2
//
//  Created by equipo on 9/18/19.
//  Copyright © 2019 equipo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    
    var peliculas : [Pelicula] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        peliculas.append(Pelicula(titulo: "La mascara", director: "Sam Mcguiven", año: 1995))
        peliculas.append(Pelicula(titulo: "Open Season", director: "Robert Downy Jr.", año: 2005))
        peliculas.append(Pelicula(titulo: "Jurasic Park", director: "Dr. Grant", año: 2000))
        
    }
    
    //Numero de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    //contenido de fila-celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as?
        CeldaPeliculaController
        
        celda?.lblPelicula.text = peliculas[indexPath.row].titulo
        celda?.lblDirector.text = peliculas[indexPath.row].director
        celda?.lblAño.text = "\(peliculas[indexPath.row].año)"
        
        return celda!
    }
    

}

