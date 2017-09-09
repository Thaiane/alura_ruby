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

def ganhou
    puts
    puts "             OOOOOOOOOOO               "
    puts "         OOOOOOOOOOOOOOOOOOO           "
    puts "      OOOOOO  OOOOOOOOO  OOOOOO        "
    puts "    OOOOOO      OOOOO      OOOOOO      "
    puts "  OOOOOOOO  #   OOOOO  #   OOOOOOOO    "
    puts " OOOOOOOOOO    OOOOOOO    OOOOOOOOOO   "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOO  OOOOOOOOOOOOOOOOOOOOOOOOO  OOOO  "
    puts " OOOO  OOOOOOOOOOOOOOOOOOOOOOO  OOOO   "
    puts "  OOOO   OOOOOOOOOOOOOOOOOOOO  OOOO    "
    puts "    OOOOO   OOOOOOOOOOOOOOO   OOOO     "
    puts "      OOOOOO   OOOOOOOOO   OOOOOO      "
    puts "         OOOOOO         OOOOOO         "
    puts "             OOOOOOOOOOOO              "
    puts
    puts "               Acertou!                "
    puts
end



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

def pede_dificuldade
    puts "Qual o nível de dificuldade que deseja? (1 fácil, 5 difícil)"
    dificuldade = gets.to_i
end

def sorteia_numero_secreto(dificuldade)
    puts "Escolhendo um número secreto entre 0 e 200..."
    sorteado = rand(200)
    puts "Escolhido... que tal adivinhar nosso número secreto?"
    sorteado
end

da_boas_vindas
dificuldade = pede_dificuldade
numero_secreto = sorteia_numero_secreto dificuldade

for tentativa in 1..3 do

  chute = pede_um_numero(tentativa)

  acertou = numero_sorteado == chute.to_i

  if acertou
    puts "Acertou!"
    ganhou
    break
  else
    if (numero_sorteado - chute.to_i) > 0
      puts "Chute menor que o número secreto \n"
    else 
      puts "Chute maior que o número secreto \n"
    end
  end
end
