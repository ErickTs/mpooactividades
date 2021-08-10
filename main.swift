import Foundation

struct miPila {
    var elementos = [Int]()
    let limite = 9
    mutating func push(elemento: Int) {
        if count()<limite{
          print("push")
          elementos.append(elemento)
        } else {
          print("Pila desbordada")
        }
        
        
    }
    mutating func pop() -> Int {
        print("pop")
        return elementos.removeLast()
    }
    func count() -> Int {
        return elementos.count
    }
    func show() {
        print(elementos)
    }
}
var stack = miPila()
stack.push(elemento:1)
stack.push(elemento:2)
stack.push(elemento:3)
stack.push(elemento:4)
stack.show()
stack.pop()
stack.show()
stack.push(elemento:5)
stack.push(elemento:6)
stack.push(elemento:7)
stack.push(elemento:8)
stack.show()
stack.push(elemento:9)
stack.show()
stack.push(elemento:10)
stack.show()
stack.push(elemento:11)
stack.push(elemento:12)
stack.push(elemento:13)