I18n.load_path << Rails.root.join("config", "locales", "fr.yml")
I18n.load_path << Rails.root.join("config", "locales", "en.yml")
I18n.locale = :fr
I18n.default_locale = :fr
I18n.available_locales = [:en, :fr, :frimages]

