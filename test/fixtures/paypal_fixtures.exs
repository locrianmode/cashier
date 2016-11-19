defmodule Cashier.PayPalFixtures do
  def purchase_request do
    Poison.encode! %{
      intent: "sale",
      payer: %{
        payment_method: "credit_card",
        funding_instruments: [
          %{
            credit_card: %{
              cvv2: "123",
              expire_month: 11,
              expire_year: 2020,
              first_name: "John",
              last_name: "Smith",
              number: "1234567890123456",
              type: "visa",
              billing_address: %{
                city: "New York",
                country_code: "NY",
                line1: "123",
                line2: "Main",
                postal_code: "10004",
                state: "New York"
              }
            }
          }
        ]
      },
      transactions: [
        %{
          amount: %{
            total: 9.75,
            currency: "USD",
            details: %{
              shipping: 0,
              subtotal: 9.75,
              tax: 0
            }
          }  
        }
      ]
    }
  end
end