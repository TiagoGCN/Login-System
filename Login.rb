def valid_password?(password)
  /^[\Wa-zA-Z0-9]{8}$/.match(password)
end
 
def create_password
  password = nil
  puts "Vamos criar a sua senha"
  puts "Digite sua nova senha"
 
  loop do
    password = gets.chomp
    unless valid_password?(password)
      puts "Sua senha deve ser composta por oito caracteres.(Pode incluir letras minúsculas e maiúsculas, números e caracteres especiais)"
      next
    end
  
    puts "Confirme a nova senha"
    password_confirm = gets.chomp
  
    break if password == password_confirm
  
    puts "Sua senha deve ser a mesma antes digitada. Tente novamente:"
  end
 
  puts "\n"
  puts "Senha criada com sucesso!"
  puts "\n"
 
  password
end
 
def print_login_successfully_message(name)
  puts "      #{name}"
  puts "     BEM VINDO"
  puts "   AO SISTEMA DO"
  puts "       TIAGO"
  puts "         ;)"
end
 
def print_login_error_message
  puts "Você excedeu as tentativas!" 
  puts "Procure a agencia mais próxima!" 
end
 
def login(password, name)
  password_login = nil
 
  3.times do
    puts "Para logar no sistema digite a senha"
 
    password_login = gets.chomp
 
    break if password_login == password
 
    puts "Senha incorreta!"
  end
 
  if password != password_login
    print_login_error_message
  else
    print_login_successfully_message(name)
  end
end
 
 
puts  "Digite seu nome"
name = gets.chomp.upcase
 
password = create_password
login(password, name)

