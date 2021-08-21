
struct Almacen: Hashable{

  var inventario: [[Producto : Int]]

  init(){
    inventario = []
  }


  mutating func addProducto(producto: Producto, cantidad: Int){
    let miniinv = [producto : cantidad]
    inventario.append(miniinv)
    
  }

  mutating func removeProducts(producto: Producto, cantidad: Int){
    var i = 0;
    for var inv in inventario{
      if let valor = inv[producto]{
        let total = valor-cantidad
        //print (producto, cantidad, i)
        inv[producto] = total
        inventario[i] = inv

      }
      i += 1
    }
  }


  func showProducts(){
    for producto in inventario{
      print(producto)
    }
  }

  func hash(into hasher: inout Hasher) {
    hasher.combine(inventario)
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


