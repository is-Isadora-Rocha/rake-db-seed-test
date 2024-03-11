# README

Uso do `rails db:seed` para adicionar dados na aplicação sem inserir um a um. 

Em app > db > seeds.rb você adiciona um código para registrar os dados, e em seguida usar o `rails db:seed` no terminal. 

Imagem em Issues. 

Ao executar rails db:seed, o Rails carrega o ambiente da aplicação e executa o código contido em seeds.rb, inserindo os dados no banco de dados conforme definido nesse arquivo. Isso é útil durante o desenvolvimento ou ao implantar uma nova instância do aplicativo, pois permite criar um conjunto inicial de dados automaticamente.

Para utilizá-lo, basta adicionar os dados desejados no arquivo seeds.rb utilizando a linguagem Ruby, seguindo a estrutura do ActiveRecord para criar registros no banco de dados. Após adicionar ou modificar os dados no arquivo seeds.rb, você pode executar rails db:seed para aplicar essas alterações ao banco de dados. Isso facilita o compartilhamento de dados iniciais entre membros da equipe de desenvolvimento e garante que todos tenham um conjunto consistente de dados ao iniciar o desenvolvimento ou implantar o aplicativo.
