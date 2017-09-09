def da_boas_vindas
    puts
    puts "        P  /_\  P                              "
    puts "       /_\_|_|_/_\                             "
    puts "   n_n | ||. .|| | n_n         Bem vindo ao    "
    puts "   |_|_|nnnn nnnn|_|_|     Jogo de Adivinhação!"
    puts "  |' '  |  |_|  |'  ' |                        "
    puts "  |_____| ' _ ' |_____|                        " 
    puts "        \__|_|__/                              "
    puts
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n\n"
    puts "Começaremos o jogo para você, #{nome}"
    nome
end


da_boas_vindas

def sorteia_numero_secreto
  puts "Escolhendo um número secreto entre 0 e 200..."
  numero_secreto = 175
  puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
  puts "\n\n\n"
  numero_secreto
end

  numero_sorteado = sorteia_numero_secreto

def pede_um_numero(tentativa)
    puts "\n\n\n\n"
    puts "Tentativa " + tentativa.to_s
    puts "Entre com o número"
    chute = gets
    puts "Será que acertou? Você chutou " + chute
    chute
end

for tentativa in 1..3 do

  chute = pede_um_numero(tentativa)

  acertou = numero_sorteado == chute.to_i

  if acertou
    puts "Acertou!"
    break
  else
    if (numero_sorteado - chute.to_i) > 0
      puts "Chute menor que o número secreto \n"
    else 
      puts "Chute maior que o número secreto \n"
    end
  end
end
