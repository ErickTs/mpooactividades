
struct Almacen: Hashable{

  
  public var hashValue: Producto {
    return producto.hashValue
  }
 
  
  var inventario: [[Producto : Int]]
  init(){
    inventario = []
  }


  
  func showProducts(){
    for miniinv in inventario{
      print(miniinv)
    }
  }

  mutating func addProducto(producto: Producto, cantidad: Int){
    var miniinv = [producto : cantidad]
    inventario.append(miniinv)
  }

  mutating func removeProducts(producto: Producto, cantidad: Int){
    var i = 0;
    for var inv in inventario{
      if let valor = inv[producto]{
        let total = valor - cantidad
        print(producto, total, i)
        inv[producto] = total
        inventario[i] = inv

      }
      i += 1
    }
  }
}
/*
let tenisNike = Producto(nombre: "Nike", precio: 35.0, desc: "Tenis nike azules", categorias:[zapatos, panela] )
let quesoLaVilla = Producto(nombre: "Queso la villa", precio: 10.0, desc: "Rico queso", categorias:[panela, oaxaca])

var invPrueba = inventario()
invPrueba.addProducto(producto: tenisNike, cantidad: 5)
invPrueba.addProducto(producto: quesoLaVilla, cantidad: 20)

invPrueba.showProducts()
invPrueba.removeProducts(producto: tenisNike, cantidad: 1)
invPrueba.showProducts() */


