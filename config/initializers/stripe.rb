Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_fKtrEER7pIIk2PTTXv7jwtJy'],
  secret_key:      ENV['sk_test_WYbtQVBKC7nC430jw6aQwoxH']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
