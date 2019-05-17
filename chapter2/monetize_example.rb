require 'monetize'
I18n.enforce_available_locales = false

bargain_price = Monetize.from_numeric(99, "USD")
p bargain_price.format

standard_price = 100.to_money("USD")
p standard_price.format