Dado("que estou no site demo.cs-cart.com") do
  @web_loja.load
end

E("pesquiso o produto {string}") do |produto|
  @web_loja.pesquisar(produto)
end

E("escolho o primeiro produto da pesquisa") do
  @web_loja.selecionar_primeiro_produto
end

E("adiciono o produto ao carrinho") do
  @web_loja.adicionar_produto_carrinho
  expect(@web_loja).to have_no_modal_item_incluso
end

Então("os dois produtos estão no carrinho de compras") do
  @web_loja.ir_carrinho
  expect(@web_loja.carrinho_populado.text).to include("F.E.A.R. 3 (PS3) MX")
  expect(@web_loja.carrinho_populado.text).to include("Batman: Arkham City (X360)")
end
