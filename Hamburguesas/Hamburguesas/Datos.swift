//
//  Datos.swift
//  Hamburguesas
//
//  Created by Florencio Lugo on 8/24/18.
//  Copyright © 2018 lugoff23. All rights reserved.
//

import Foundation
import UIKit

class coleccionDePaises {

    let paises = [ "México", "Suiza", "Australia", "Chile",
                   "Uganda", "Argentina", "Colombia", "Venezuela",
                   "Rwanda", "Gabón", "Belice", "Guayana",
                   "Angola", "Malasia", "Birmania", "Tanzania",
                   "Suecia", "Mauricio", "Polonia", "Israel"
    ]
    
    func obtenPais() -> String {
        let posicion = Int ( arc4random()) % paises.count
        return paises[posicion]
    }
}

class ColeccionDeHamburguesas {
    let hamburguesas = [ "Xtreme", "BigMac", "BigMac con queso", "BigMac con tocino", "Atascada",
                         "Grosera", "Pollo", "Pollo con queso", "Vegetariana", "Infantil",
                         "Juvenil", "Whooper", "Double Whooper", "McNífica", "McNífica con queso",
                         "McPollo", "McTocino", "McArthur", "Orgánica", "Brontoburguesa"]
    
    func obtenHamburguesa() -> String {
        let posicion = Int ( arc4random()) % hamburguesas.count
        return hamburguesas[posicion]
    }
}

struct Colores {
    let colores = [ UIColor(red:210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                    UIColor(red:40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                    UIColor(red:3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
                    UIColor(red:210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
                    UIColor(red:120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                    UIColor(red:130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                    UIColor(red:130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                    UIColor(red:3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    func regresaColorAleatorio() -> UIColor {
        let posicion = Int(arc4random()) % colores.count
        return colores[posicion]
    }
}
