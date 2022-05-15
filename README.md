# ИНС

Данный репозиторий содержит демонстрационный пример искусственной 
нейронной сети (ИНС) реализованной на языке программироваия Ruby.

* Статус - __в разработке__
* Версия языка Ruby - 3.0.2
* Пример запуска приложения
```shell
$ ruby app.rb
```

Фреймворка тестироваия - RSpec
```shell
$ rspec
```

Линтеры - Rubocop и Fasterer
```shell
$ rubocop

$ rubocop --require rubocop-performance

$ fasterer
```


Для себя (ссылки на репозитоории гемов):
* https://github.com/jfelchner/ruby-progressbar/

Параметры инициализации сети:
* количество входов
* количество выходов
* количество слоёв
* активационная функции на выходном слое
* активационная функция на остальных слоях

```ruby
input_layer = Layer.new()
hidden_layer = HiddenLayer.new(input_layer)

```