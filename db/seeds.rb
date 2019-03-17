puts 'Cleaning database...'
Teddy.destroy_all
Category.destroy_all

puts 'Creating categories...'
geek = Category.create!(name: 'geek')
kids = Category.create!(name: 'kids')

puts 'Creating teddies...'
Teddy.create!(sku: 'original-teddy-bear', name: 'Teddy bear', price_cents: 4000, category: kids, photo_url: 'http://onehdwallpaper.com/wp-content/uploads/2015/07/Teddy-Bears-HD-Images.jpg')
Teddy.create!(sku: 'jean-mimi', name: 'Jean-Michel - Le Wagon', price_cents: 2000, category: geek, photo_url: 'https://pbs.twimg.com/media/B_AUcKeU4AE6ZcG.jpg:large')
Teddy.create!(sku: 'octocat',   name: 'Octocat -  GitHub',  price_cents: 5000,    category: geek, photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')
puts 'Finished!'
