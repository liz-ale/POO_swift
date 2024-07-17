import Foundation

// Abstracción
class Vehiculo {
    var nombre: String
    var marca: String
    var tipo: String
    private var multas: Int
    
    init(nombre: String, marca: String, tipo: String) {
        self.nombre = nombre
        self.marca = marca
        self.tipo = tipo
        self.multas = 0
    }
    func getMultas() -> Int {
        return multas
    }
    
    func agregarMulta() {
           multas += 1
    }
    
    func moverse() -> String {
        return ""
    }
}

// Vehículo aéreo
class Aereo: Vehiculo {
    init(nombre: String, marca: String) {
        super.init(nombre: nombre, marca: marca, tipo: "Aéreo")
    }
    
    override func moverse() -> String {
        return "Volar"
    }
}

// Vehículo terrestre
class Terrestre: Vehiculo {
    init(nombre: String, marca: String) {
        super.init(nombre: nombre, marca: marca, tipo: "Terrestre")
    }
    
    override func moverse() -> String {
        return "Rodar"
    }
}

// Vehículo marítimo
class Maritimo: Vehiculo {
    init(nombre: String, marca: String) {
        super.init(nombre: nombre, marca: marca, tipo: "Marítimo")
    }
    
    override func moverse() -> String {
        return "Navegar"
    }
}

// Polimorfismo
func presentar(vehiculo: Vehiculo) {
    print("\(vehiculo.nombre) de marca \(vehiculo.marca) es un vehículo \(vehiculo.tipo) y puede \(vehiculo.moverse()).")
}

// Uso de las clases
let avion = Aereo(nombre: "Avión", marca: "Boeing")
let coche = Terrestre(nombre: "Coche", marca: "Toyota")
let barco = Maritimo(nombre: "Barco", marca: "Yamaha")

// Agregar algunas multas
coche.agregarMulta()
coche.agregarMulta()
barco.agregarMulta()

// Lista de vehículos
let vehiculos: [Vehiculo] = [avion, coche, barco]

// Iterar sobre los vehículos y realizar la acción correspondiente

presentar(vehiculo: avion)  // Avión de marca Boeing es un vehículo Aéreo y puede Volar.
presentar(vehiculo: coche)  // Coche de marca Toyota es un vehículo Terrestre y puede Rodar.
presentar(vehiculo: barco)  // Barco de marca Yamaha es un vehículo Marítimo y puede Navegar.

