# Requerimiento 1, se solicita un programa que 
# mediante el uso de métodos permita calcular 
# el nuevo salario de un colaborador/a en 
# de un porcentaje mínimo de aumento establecido.

def calcular_nuevo_salario(salario_actual, porcentaje)
    aumento = salario_actual * porcentaje / 100.0
    nuevo_salario = salario_actual + aumento
    return nuevo_salario
end
  
  # Ejemplo de uso:
  salario_actual = 50000
  porcentaje = 10
  nuevo_salario = calcular_nuevo_salario(salario_actual, porcentaje)
  
  puts "El salario actual es: $#{salario_actual}"
  puts "El porcentaje de aumento es: #{porcentaje}%"
  puts "El nuevo salario es: $#{nuevo_salario}"
  


# Requerimiento 2, te solicitan un programa que simule 
# el juego de “Adivina el número”. 
# En este programa el computador va a elegir un número aleatorio 
# y el usuario al seleccionar un número debe indicarle si ganó o perdió. La condición para ganar es que
#  el número del computador debe ser igual al del jugador.
# El rango de número va entre 1 hasta n, tomando en consideración que mientras más amplio sea el rango más duradero será el juego.

def adivina_el_numero(rango)
    numero_secreto = rand(1..rango)
  
    puts "Bienvenido al juego de 'Adivina el número'"
    puts "Se ha generado un número secreto entre 1 y #{rango}."
    puts "Tienes que adivinar cuál es."
  
    intentos = 0
    adivinado = false
  
    while !adivinado
      print "Ingresa un número: "
      numero_usuario = gets.chomp.to_i
  
      intentos += 1
  
      if numero_usuario == numero_secreto
        puts "¡Felicitaciones! Adivinaste el número en #{intentos} intentos."
        adivinado = true
      elsif numero_usuario < numero_secreto
        puts "El número secreto es mayor que #{numero_usuario}. Intenta de nuevo."
      else
        puts "El número secreto es menor que #{numero_usuario}. Intenta de nuevo."
      end
    end
  end
  
  # Ejemplo de uso:
  adivina_el_numero(50)




# utilizando como base el ejercicio de cálculo de IMC en la guía de ejercicios, agregar en el cálculo de Obesidad 
# los elementos faltantes dado que la obesidad se subdivide en 3 niveles. 
# Deberás agregar a la lógica condicional los cálculos para esos tres niveles.

def calcular_imc(peso, altura)
    imc = peso / (altura ** 2)

    if imc < 18.5
        puts "Tu IMC es #{imc.round(2)}, lo que indica que tienes bajo peso."
    elsif imc >= 18.5 && imc < 25
        puts "Tu IMC es #{imc.round(2)}, lo que indica que tienes un peso saludable."
        "Normal"
    elsif imc >= 25 && imc < 30
        puts "Tu IMC es #{imc.round(2)}, lo que indica que tienes sobrepeso."
    elsif imc >= 30 && imc < 35
      puts "Tu IMC es #{imc.round(2)}, lo que indica que tienes sobrepeso."
      "Obesidad grado I: Moderado"
    elsif imc >= 35 && imc < 40
        puts "Tu IMC es #{imc.round(2)}, lo que indica que tienes obesidad."
        "Obesidad grado II: Severo"
    else
        puts "Tu IMC es #{imc.round(2)}, lo que indica que tienes obesidad severa."
        "Obesidad grado III: Muy severo"
    end
  end
  
  puts calcular_imc(104, 1.65)