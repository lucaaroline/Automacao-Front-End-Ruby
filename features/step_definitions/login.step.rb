Dado('que o usuario queira se logar') do
  login.load            #esse 'login' é o nome do método de inicialização criado no arquivo 'page.initialize.rb' que pode ser acessado globalmente em qualquer ponto do projeto
end                     #.load é a funcionalidade que espera a pagina ser carregada respeitando o tempo max de espera configurado

Quando('ele digitar as credenciais validas') do
  login.userLogin(CREDENTIAL[:user_valido][:email], CREDENTIAL[:user_valido][:password])      #vai executar o método userLogin que foi criado na classe
end                                                                           #vai puxar a hash mãe criada 'CREDENTIAL', e a chave da subhash seguida da chave de valor

Entao('deve acessar o site com sucesso') do
  home.checkLoginSucessful     #vai executar o método de inicializar a vde asserçao criado na page da Home
end


Dado('que o usuario tente logar sem senha') do
  login.load 
end

Quando('ele digitar as credenciais invalidas') do
  login.userLogin(CREDENTIAL[:user_sem_senha][:email], CREDENTIAL[:user_sem_senha][:password])
end

Entao('uma mensagem informando o erro deve aparecer') do
  login.checkInvalidUser
end