require 'capybara'                          #Importando gems no arquivo de configuração
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'site_prism/all_there'
require 'rspec'
require 'rspec/expectations'
require_relative 'page.initialize.rb'  
include RSpec::Matchers

Environment = ENV['URL']		#criada váriavel que recebe a URL de ambiente definida no arquvivo "cucumber.yml"

World(Page)		#indicando que o módulo 'Page' do arquivo page.initialize.rb será global, e acessado em qualquer ponto no projeto

Capybara.configure do |config|                      #Setando a váriavel 'config' para configurar o capybara
	config.default_driver = :selenium_chrome        #driver e navegador a ser utilizado
	config.app_host = Environment           		#definida a variavel 'Environment' como default do que acessar - tbm podemos chumbar uma url default
	config.default_max_wait_time = 5                #tempo máx a esperar ao acessar um elemento
end