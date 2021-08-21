
import Foundation

func main(){

  //Instancias
  let menuPrincipal = Menu()
  var almacen = Almacen()
  var carrito = Carrito()
  
  // -- Crear categorias   
  let zapatos = Category(name: "Zapatos")
  let lacteos = Category(name: "Lacteos")
  let quesos = Category(name: "Quesos")
  let panela = Category(name: "Panela")
  let oaxaca = Category(name: "Oaxaca")
  let electronica = Category(name: "Electronica")
  let calzado = Category(name: "Calzado")
  let ropaMujer = Category(name: "Ropa de Mujer")
  let ropaHombre = Category(name: "Ropa de Hombre")
  let ropa = Category(name: "Ropa")
  let salud = Category(name: "Salud")

  // -- Crear productos y colocar categorias
  let quesoLaVilla = Producto(nombre: "Queso la villa", precio: 10.0, desc: "Rico queso", categorias:[panela, oaxaca])
  let falda = Producto(nombre:"Minifalda",precio:300.5,desc:"falda rosa", categorias: [ropaMujer])
  let camisa = Producto(nombre:"Camisa", precio:75.9, desc:"camisa blanca", categorias: [ropaHombre])
  let pastilla = Producto(nombre:"Pastilla", precio:40, desc:"paracetamol", categorias: [salud])
  let botas = Producto(nombre:"Botas", precio:700, desc:"Casuales de ingeniero", categorias: [salud])
  let celular = Producto(nombre:"Celular", precio:6900, desc:"Nokia Bionic A15 Pro Max", categorias: [electronica])
  

  menuPrincipal.addCategory(category: calzado)
  menuPrincipal.addCategory(category: lacteos)
  menuPrincipal.addCategory(category:ropa)
  menuPrincipal.addCategory(category: electronica)
  menuPrincipal.addCategory(category: salud)

  // -- Colocar a subcategorias
  quesos.addSubCategory(category: oaxaca)
  lacteos.addSubCategory(category: quesos)
  quesos.addSubCategory(category: panela)
  calzado.addSubCategory(category: zapatos)
  ropa.addSubCategory(category: ropaMujer)
  ropa.addSubCategory(category: ropaHombre)
  
  print("\t..........................")
  print("\tNUESTRAS CATEGORIAS DE LA TIENDA")
  menuPrincipal.display() 

  // -- Agregar productos al almacen
  almacen.addProducto(producto:falda, cantidad:15)
  almacen.addProducto(producto:quesoLaVilla, cantidad: 10)
  almacen.addProducto(producto:camisa,cantidad:60)
  almacen.addProducto(producto:pastilla,cantidad:30)
  almacen.addProducto(producto: botas, cantidad:10)
  almacen.addProducto(producto: celular, cantidad:5)

  // -- Mostrar almacen
  print("\t=========================")
  print("\t\n\tNuestra tienda ceunta con:")
  almacen.showProducts()

  // -- Agregar al carrito
  print("\n\t===========|||||=========== ")
  print("\tEl usuario desea comprar lo siguiente")
  carrito.addProductCarrito(producto: falda, cantidad:1)
  carrito.addProductCarrito(producto:quesoLaVilla, cantidad: 2)
  carrito.addProductCarrito(producto: camisa, cantidad:4)
  carrito.addProductCarrito(producto: pastilla, cantidad: 10)
  carrito.addProductCarrito(producto: botas, cantidad:1)
  carrito.addProductCarrito(producto: celular, cantidad:1)

  // -- Mostrar el carrito
  print(".\n..\n...")
  carrito.showProductCar()

  // -- Descontar de almacen
  print ("\n\t=========================")
  almacen.removeProducts(producto:falda,cantidad:1)
  almacen.removeProducts(producto:quesoLaVilla, cantidad:2)
  almacen.removeProducts(producto:camisa,cantidad:4)
  almacen.removeProducts(producto:pastilla,cantidad:10)
  almacen.removeProducts(producto:botas,cantidad:1)
  almacen.removeProducts(producto:celular,cantidad:1)

  // -- Mostrar total en pesos del carrito
  //print ("\n\t=========================\nA Pagar")
  /*almacen.payProducts(precio:300.5,cantidad:1)
  almacen.payProducts(precio:, cantidad:2)
  almacen.payProducts(precio,cantidad:4)
  almacen.payProducts(precio,cantidad:10)
  almacen.payProducts(precio,cantidad:1)
  almacen.payProducts(precio,cantidad:1) */

  // -- Mostar almacen actualizado
  print("\t...Nueva Existencia")
  almacen.showProducts()
    
}

main()


