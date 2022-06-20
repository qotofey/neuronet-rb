# frozen_string_literal: true

# require 'ruby-progressbar'
require_relative 'lib/neuronet/net'
require_relative 'lib/neuronet/configuration'

info = <<~startdoc
  Добро пожаловать в демонстрационный интерфейс модуля ИНС!

  Для прекращения работы программы введите `0` или `exit` (без символа `)\n
startdoc

puts info

# net = Neuronet::Net.new(3, 2)
# net.learn([], 10_000, 0.3, 0.0125)
# puts Neuronet::Net.new(3, 2).inputs_count


# PARTS_OF_WORK = 100

# learning_progressbar = ProgressBar.create(
#   total: PARTS_OF_WORK,
#   format: '%a, %J, %E %B' # elapsed time, percent complete, estimate, bar
#   # output: File.open(File::NULL, 'w') # IN TEST ENV
# )

# (1..PARTS_OF_WORK).each do |_i|
#   sleep(1)
#   learning_progressbar.increment
# end

puts DATA.read

__END__
Hello from Docker!
