class WebLoja < SitePrism::Page
  set_url '/'

  element :campo_busca, '#search_input'
  element :botao_pesquisar, 'button[title=Pesquisar]'
  element :botao_adicionar_carrinho, 'button[class="ty-btn__primary ty-btn__big ty-btn__add-to-cart cm-form-dialog-closer ty-btn"]'
  element :modal_item_incluso, 'div[class=hidden]'
  element :click_meu_carrinho, 'span[class="ty-minicart-title ty-hand"]'
  element :click_ver_carrinho, 'div[class=ty-float-left]'
  element :carrinho_populado, '#cart_items'
  elements :resultado_busca, 'div[class="ty-grid-list__image"]'

  def pesquisar(produto)
    campo_busca.click
    campo_busca.set produto
    botao_pesquisar.click
  end

  def selecionar_primeiro_produto
    resultado_busca.first.click
  end

  def adicionar_produto_carrinho
    botao_adicionar_carrinho.click
  end

  def ir_carrinho
    click_meu_carrinho.click
    click_ver_carrinho.click
  end
end
