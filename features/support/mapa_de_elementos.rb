#informando o caminho da nossa classe que será instanciada
Dir[File.join(File.dirname(__FILE__), '../pages_objects/*_page.rb')].each { |file| require file } 

#estamos instanciando a nossa classe PageObject para podermos utilizar dentro do nosso projeto
module PageObjects
    def home
        @home ||= PageObject.new
    end

    def products
        @products ||= Prod_Objects.new
    end
end