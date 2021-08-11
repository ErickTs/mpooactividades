struct Almacen{

  var inventario: [[Producto : Int]]

  init(){
    inventario = []
  }

  func showProducts(){
    for producto in inventario{
      print(producto)
    }
  }

  mutating func addProducto(producto: Producto, cantidad: Int){
    let inventario = [producto : cantidad]
    inventario.append(producto)
  }

  mutating func removeProducts(producto: Producto, cantidad: Int){
    inventario.removeLast(producto)
  }
}
