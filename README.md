# Scoring Processing

## Objetivo 
Criar um aplicativo de processamento de pontuação
A aplicação deve conter um serviço que observa um diretório e sempre que um
novo arquivo .csv chegar, o mesmo deve ser processado. O processamento do
arquivo é a leitura do mesmo e a gravação de cada linha na tabela de pontuação.
Um exemplo de uma linha do arquivo de pontuações pode ser vista abaixo:
2018-06-15; Marcos; 250;600;
Os valores de cada coluna referem-se respectivamente à data de pontuação, nome
do usuário, ID do usuário e quantidade de pontos. Cada usuário pode fazer no
máximo 3126 pontos.

## Implementação

Foi utilizado o listen para observar um diretório especifico a fim de 
tomar uma ação assim que o arquivo for inserido no diretório.

o arquivo de configuração esta dentro de:

```
config/initializers/listen_init.rb
```

```ruby
listener = Listen.to('public/score_files') do |modified, added, removed|
  puts "added absolute path: #{added}"
  if added.present?
    Score.import(added)
  end
end
listener.start
sleep 
```

Os arquivos que chegam são importados para aplicação que os mostra em duas telas,
a que lista todas as entradas importadas para os administradores do sistema, 
e a tela de ranking acessível para todos.

## Utilização 
clone este repositório localmente e execute o comando `rake db:setup` para criar os
bancos e importar o seed.

Após rodar a aplicação efetue login com:

```
email: admin@gmail.com
senha: topsecret
```