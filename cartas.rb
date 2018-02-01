class Cartas
  attr_accessor :numero, :pinta
  def initialize(num, pint)
    @numero = num
    @pinta = pint
  end
end

def jugar
  cartasajugar = []
  posibles_numeros = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  posibles_pintas = ["Trébol", "Pica", "Corazón", "Diamante"]

  5.times do
    cartasajugar.push(Cartas.new(posibles_numeros.sample, posibles_pintas.sample))
  end
  puts " "
  puts "Ahora tienes tus cartas en la mano"
  puts " "
  cartasajugar
end


def mostrar(cart)
  if cart == nil
    puts " "
    puts "No has jugado tus cartas todavia"
  else
    cart.each do |e|
      puts "tienes el #{e.numero} de #{e.pinta}"
      puts " "
    end
  end
end

#################

def opcion
  puts 'Selecciona una opcion: '
  puts 'jugar'
  puts 'mostrar'
  puts 'salir'
  puts " "
  opcion = gets.chomp
end

continuar = true

 puts " "

while continuar
  case opcion
  when "jugar"
    cartasajugar = jugar
  when "mostrar"
    mostrar(cartasajugar)
  when "salir"
    puts " "
    puts "Adiós"
    continuar = false
  else
    puts "Opción no valida"
  end
end
