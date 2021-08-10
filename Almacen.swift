struct Almacen{
  var inventario: [(Producto, Int)]

  init(){
    inventario = []
  }

  func showProducts(by category: Category){
    for producto in inventario{
      if producto.0.isInCategory(category: category){
        print(producto.0)
      }
    }
  }

  func showProducts(){
    for producto in inventario{
      print(producto.0, producto.1)
    }
  }

  mutating func addProducto(producto: Producto, cantidad: Int){
    var tupla = (producto, cantidad)
    inventario.append(tupla)
  }

  mutating func removeProducts(producto: Producto, cantidad: Int){
  }
}