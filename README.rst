hangeul_comp
============

Hangeul(한글) composer/decomposer gem.

한글 유니코드 완성형 문자를 조합형으로, 조합형 문자를 완성형으로 변환할 수 있도록 해주는 gem입니다.

Ruby Gem for composing Hangeul(한글) combinative character to completive one, and decomposing Hangeul completive character to combinative one.

Installing
----------

.. code-block:: console
  $ gem install hangeul_comp

you can also 
clone this repository and build gemspec & install!

.. code-block:: console

  $ git clone git://github.com/devleoper/hangeul_comp.git
  $ cd hangeul_comp
  $ gem build hangeul_comp.gemspec && gem install hangeul_comp.gem

, or add a line to your Gemfile and run the command `bundle install`

.. code-block:: ruby

  gem 'hangeul_comp', :git => 'git://github.com/devleoper/hangeul_comp.git'


Usage
-----

.. code-block:: ruby

  require 'hangeul_comp'

  puts "꺄아".ko_decompose # => \u1101\u1163\u110b\u1161
  puts "\u1102\u1163\u11bc".ko_compose # => 냥



