struct Carrito {

  var miCarrito: [[Producto: Int ]] 
  init(){
    miCarrito = []
  }

  
  mutating func addProductCarrito(producto: Producto, cantidad: Int){
    let miniCar = [producto : cantidad]
    miCarrito.append(miniCar)
  }

  

   
  func showProductCar(){
    for producto in miCarrito{
      print(producto)
    }
  }
  
}