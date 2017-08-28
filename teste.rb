puts "Bem vindo ao jogo da adivinhação"
puts "Qual é o seu nome?"
nome = gets
puts
puts
puts
puts
puts
puts
puts "Começaremos o jogo para você, " + nome

for tentativa in 1..3 do
  puts "Escolhendo um número secreto entre 0 e 200..."
  numero_secreto = 175
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  puts
  puts
  puts
  puts
  puts "Tentativa " + tentativa.to_s
  puts "Entre com o numero"
  chute = gets
  puts "Será que acertou? Você chutou " + chute


  acertou = numero_secreto == chute.to_i

  if acertou
    puts "Acertou!"
    break
  else
    if (numero_secreto - chute.to_i) > 0
      puts "Chute menor que o número secreto \n"
    else 
      puts "Chute maior que o número secreto \n"
    end
  end
end
