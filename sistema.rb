require_relative "livro"
require_relative "revista"
require_relative "ebook"
require_relative "estoque"


#livro_rails = Livro.new(70, "Ruby on Rails",2011)

# livro_ruby = Livro.new(60,"Programming Ruby",2010)

# def imprime_nota_fiscal(livros)
#     livros.each do |livro|
#         puts "Título: #{livro.titulo} - #{livro.preco}"

#     end
# end

# livros = [livro_rails, livro_ruby]

# imprime_nota_fiscal livros

# def livro_para_newsletter(livro)
#     if livro.ano_lancamento < 1999
#         puts "Newsletter/Liquidação"
#         puts livro.titulo
#         puts livro.preco
#          puts livro.possui_reimpressao?  
#     end
# end



# baratos = estoque.mais_baratos_que(80)

# baratos.each do |livro|
#     puts livro.titulo
# end

# class Conversor
#     def string_para_alfanumerico(nome)
#         nome.gsub /[^\w\s]/,''
#     end
# end

# class Float
#     def para_dinheiro
#       valor = "R$" << self.to_s.tr('.', ',')
#       valor << "0" unless valor.match /(.*)(\d{2})$/
#       valor
#     end
# end


# livros_computacao = ["Agile Web Development with Rails", "Domain Driven Design", "Programming Ruby 1.9", "Agile Web Development with Rails"]
# def livros_computacao.length
#     unique = []
#     self.each do |item|
#       unique.push(item) unless unique.include?(item)
#     end
#     unique.length

# end




algoritmos = Livro.new("Algoritmos", 100, 1998, true, " ", true)
arquitetura = Livro.new("Arquitetura de Softwares", 70, 2011, true, " ", false)
programmer = Livro.new("O Programador Pragmático", 100, 1999, true, " ", false)
ruby = Livro.new("Programando em Ruby", 100, 2004, true, " ", false)
revistaa = Revista.new("Revista de Ruby", 10, 2012, true," ", 3)
online_arquitetura = Ebook.new("Arquitetura de Softwares", 50, 2012," ")

estoque = Estoque.new
estoque << algoritmos << algoritmos << ruby << programmer << arquitetura << ruby << ruby << revistaa << revistaa << online_arquitetura


estoque.vende ruby
estoque.vende algoritmos
estoque.vende algoritmos
estoque.vende ruby
estoque.vende ruby
estoque.vende algoritmos
estoque.vende revistaa
estoque.vende online_arquitetura

puts estoque.livro_mais_vendido_por_titulo.titulo
puts estoque.revista_mais_vendido_por_titulo.titulo
puts estoque.ebook_mais_vendido_por_titulo.titulo