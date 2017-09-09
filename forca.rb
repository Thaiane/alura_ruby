def boas_vindas
	puts "Bem vindo ao jogo da forca!"
	puts "Qual é o seu nome?"
	nome = gets.strip
	puts "\n\n\n"
	puts "Começaremos o jogo para você, #{nome}"
	nome
end

def sorteia_palavra_secreta
    puts "Escolhendo uma palavra..."
    palavra_secreta = "programador"
    puts "Escolhida uma palavra com #{palavra_secreta.size} letras... boa sorte!"
    palavra_secreta
end

def nao_quer_jogar?
    puts "Deseja jogar novamente? (S/N)"
    quero_jogar = gets.strip
    nao_quero_jogar = quero_jogar.upcase == "N"
end