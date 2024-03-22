Before do
    Capybara.page.driver.browser.manage.window.maximize
    #pedindo pra automação maximizar a página
end

After do
    puts "Teste finalizado"
    #solta um log de texto sinalizando que o teste foi finalizado
end