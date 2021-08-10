var alumnosCalificaciones = ["Ana": 6, "Mario": 5, "Lidia": 9, "Pedro": 8]

print(alumnosCalificaciones)

var diccionarioVacioTipado : [String : Int] = [:]

print(alumnosCalificaciones["Ana"]!)


print("----> PROPIEDADES <-----")
print(alumnosCalificaciones.isEmpty)
print(alumnosCalificaciones.count)

alumnosCalificaciones.updateValue(9, forKey: "Ana")
print(alumnosCalificaciones)

alumnosCalificaciones["Pedro"] = 5
print(alumnosCalificaciones)

alumnosCalificaciones.removeValue(forKey: "Pedro")
alumnosCalificaciones["Ana"] = nil
print(alumnosCalificaciones)

for (alumno, calificacion) in alumnosCalificaciones{
  print("\(alumno) -> \(calificacion)")
}

for alumno in alumnosCalificaciones.keys{
  print("\(alumno) ", terminator: "")
}
print("")

for calificacion in alumnosCalificaciones.values{
  print("\(calificacion), ", terminator: "")
}
print("")

