# begin
#     #tentar
#     file = File.open('./ola.txt')

#     if file
#         puts file.read
#     end

# rescue Exception => e
#     #Armazenar erro
#     puts e.backtrace
# end


def soma(n1 , n2)
    n1 + n2

rescue Exception => e
    puts 'Erro ao executar a soma'
end

soma('10', 3)