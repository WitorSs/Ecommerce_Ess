Feature: Disparo de e-mails para o usuário com o comprovante do pedido
    As a usuário do Ecommerce
    I want to visualizar o comprovante do meu pedido
    To see informações do meu pedido

Scenario: E-mail enviado com sucesso
  Given Estou na "caixa de entrada" do e-mail
  And Visualizo que o "e-mail com o comprovante" está na caixa de entrada do e-mail
  When Abro o "e-mail com o comprovante do pedido"
  Then Consigo visualizar o "comprovante"

Scenario: E-mail foi para caixa de spam
  Given Estou na "caixa de entrada" do e-mail
  And Visualizo que o "e-mail com o comprovante" não está na caixa de entrada do e-mail
  When Abro aba de "e-mails marcados como Spam"
  Then Vou para a pasta de "Spam"
  And Visualizo que o e-mail está lá
  When Abro o "e-mail com o comprovante do pedido"
  Then Consigo visualizar o "comprovante"
  
Scenario: E-mail não enviado
  Given Estou na "caixa de entrada" do e-mail
  And Visualizo que o "e-mail com o comprovante" não está na caixa de entrada do e-mail
  When Abro aba de "e-mails marcados como Spam"
  Then Vou para a pasta de "Spam"
  And Visualizo que o e-mail com o comprovante do pedido não foi enviado
