README for has_many_select
==============================

This gem is provides a patch for ActiveRecord 2.1.0 to enable the use of the :primary_key
option used in combination with the has_many option.

The problem:
  Legacy systems outside the standard.

  class HeaderSale < ActiveRecord::Base
    set_table_name("cab_pedido")
    set_primary_key("r_e_c_n_o_") # false primary_key, real is cpv_pedido. The field r_e_c_n_o_ is serial.

    has_many :justifications,
      :foreign_key => 'nr_pedido'
  end

  x = HeaderSale.find(:first, :conditions => 'cpv_pedido = 193514')
    => 'SELECT * FROM "cab_pedido_vendas" WHERE (cpv_pedido = 193514) LIMIT 1'
  x.justifications
    => 'SELECT * FROM "justificativa" WHERE ("justificativa".nr_pedido = 307634)' # ERROR
  the correct select is:
    => 'SELECT * FROM "justificativa" WHERE ("justificativa".nr_pedido = 193514)' # CORRECT

== Usage

Then you must require the gem in your environment.rb
  require 'has_many_select'

In your model:

  class HeaderSale < ActiveRecord::Base
    set_table_name("cab_pedido")
    set_primary_key("r_e_c_n_o_") # false primary_key, real is cpv_pedido. The field r_e_c_n_o_ is serial.

    has_many :justifications,
      :foreign_key => 'nr_pedido', :primary_key => 'cpv_pedido'
  end

  x = HeaderSale.find(:first, :conditions => 'cpv_pedido = 193514')
    => 'SELECT * FROM "cab_pedido_vendas" WHERE (cpv_pedido = 193514) LIMIT 1'
  x.justifications
    => 'SELECT * FROM "justificativa" WHERE ("justificativa".nr_pedido = 193514)' # CORRECT

== Installation

  gem sources -a http://gems.github.com

  gem install has_many_select

== Author

Author of this gem is Ozéias Sant'ana < oz.santana@gmail.com >
  based on: http://github.com/rails/rails/commit/3351d2997017465047b2c3dc63dc31e2362368af

== License

this gem is distributed under the MIT license
