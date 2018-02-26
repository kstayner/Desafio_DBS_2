Before do
  @web_loja = WebLoja.new
end

After do |scenario|
  nome_cenario = scenario.name.tr(' ', '_').downcase!
  nome_cenario = nome_cenario.gsub(/([_@#!%()\-=;><,{}\~\[\]\.\/\?\"\*\^\$\+\-]+)/, '')
  screenshot = "logs/shots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Clique para ver a evidência!')
end
