Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins(
      'http://localhost:5173',
      'http://localhost:5174',
      'http://localhost:5175',
      'http://localhost:5176',
      'https://bok-quiz-front.vercel.app', # ❌ no trailing slash
      %r{\Ahttp://127\.0\.0\.1:\d+},
      %r{\Ahttp://192\.168\.\d+\.\d+(?::\d+)?},
      %r{\Ahttp://10\.\d+\.\d+\.\d+(?::\d+)?},
      %r{\Ahttp://.*\.local(?::\d+)?},
      'https://cultural-olympe-abdul-glucode-ffca2586.koyeb.app' # ❌ no trailing slash
    )

    resource '*',
             headers: :any,
             methods: %i[get post put patch delete options head],
             credentials: true
  end
end
