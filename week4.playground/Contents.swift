//: Semana 4

import UIKit

enum Velocidades : Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        
        var velocidadEnCadena : String
        
        switch self.velocidad {
        case .Apagado:
            self.velocidad = .VelocidadBaja
            velocidadEnCadena = "Velocidad baja"
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad media"
        case . VelocidadMedia:
            self.velocidad = .VelocidadAlta
            velocidadEnCadena = "Velocidad alta"
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad media"
        }
        return (self.velocidad.rawValue, velocidadEnCadena)
    }
}

var auto = Auto()
print ("\(auto.velocidad.rawValue), \(auto.velocidad)")

for _ in 1...20{                                
    let (actual, velocidadEnCadena) = auto.cambioDeVelocidad()
    print ("\(actual), \(velocidadEnCadena)")
}

