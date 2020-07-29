unless Rails.env.production?
    ENV['PASS'] = 'testuser'
end
