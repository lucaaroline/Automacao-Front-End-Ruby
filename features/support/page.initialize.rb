Dir[File.join(File.dirname(__FILE__), '~\..\ProjetoQA\features\pages*.page.rb')].each { |file| require file }
#pedindo pra automação ir até a pasta 'pages' do projeto, e faça um require para cada arquivo com extensão .page.rb
#caminho da pasta encurtada

module Page         #criando um módulo - coleção de métodos p/ compartilhamento de código

    def login            #criando métodos referenciando as pages
        @login ||= LoginPage.new        #criando variaveis que irão inicializar as classes
    end

    def home
        @home ||= HomePage.new
    end
end