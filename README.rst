NOTE
====

이 gem을 사용하시는 것보다 ruby의 String 객체에 있는 `유니코드 정규화
<http://ko.wikipedia.org/wiki/유니코드_정규화>`_
에 관련된 메서드(`String.unicode_normalize
<http://ruby-doc.org/stdlib-2.2.0/libdoc/unicode_normalize/rdoc/String.html>`_
)를 사용하는 것을 추천해드립니다.

It's more recommended to use `Unicode Normalization
<http://en.wikipedia.org/wiki/Unicode_equivalence#Normalization>`_ method(`String.unicode_normalize
<http://ruby-doc.org/stdlib-2.2.0/libdoc/unicode_normalize/rdoc/String.html>`_ ) instead of using this gem.

.. code-block:: ruby

  "한글".ko_decompose == "한글".unicode_normalize(:nfd) # true
  

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



