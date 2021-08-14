import Foundation

func ordenamientoGg(miArreglo: inout [Int]) {
    var n = miArreglo.count
    while (n > 0) {
        var j = 0
        for i in 1..<n {
            // Cambio del indice i
            if miArreglo[i - 1] > miArreglo[i] {
                let temp = miArreglo[i - 1]
                miArreglo[i - 1] = miArreglo[i]
                miArreglo[i] = temp
                j = i
            }
        }
       //inidice modificado
        n = j
    }
}

var miArreglo = [4,1,9,0,44,8,6,11,99]
ordenamientoGg(miArreglo: &miArreglo)
print(miArreglo)
//end