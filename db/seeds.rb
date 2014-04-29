Recipe.delete_all
Ingredient.delete_all
User.delete_all

tim = User.create(:name => 'Tim',  email: "tim.garcia@generalassemb.ly", password: "password123", password_confirmation: "password123")
rafi = User.create(:name => 'Raphael', :email => "rafi.sofaer@generalassemb.ly", :password => "asdasd", :password_confirmation => "asdasd")

r1 = Recipe.create(:name => 'Banana Pancakes', :course => 'Dessert', :cooktime => 10, :servingsize => 4, :instructions => 'Cook in pan', :image => 'http://hostedmedia.reimanpub.com/TOH/Images/Photos/37/exps1053_BB2406671D07_20_3b.jpg')
r2 = Recipe.create(:name => 'French Chicken', :course => 'Main', :cooktime => 125, :servingsize => 3, :instructions => 'Heat Oven', :image => 'http://img4-3.myrecipes.timeinc.net/i/recipes/ck/96/11/french-chicken-ck-222717-l.jpg')
r3 = Recipe.create(:name => 'French Onion Soup', :course => 'Apps', :cooktime => 35, :servingsize => 1, :instructions => '', :image => 'http://hostedmedia.reimanpub.com/TOH/Images/Photos/37/exps36687_HC1154010B12_06_1b.jpg')

i1 = Ingredient.create(:name => 'Flour', :brand => 'Gold Medal', :image => 'http://3.bp.blogspot.com/_Iel3IXJ_g7A/RzIFHOZyqRI/AAAAAAAACvk/f6zlHQ_QFSA/s400/flour.jpg')
i2 = Ingredient.create(:name => 'Eggs', :brand => 'Clover', :image => 'http://images.elephantjournal.com/wp-content/uploads/2010/04/eggs1.jpg')
i3 = Ingredient.create(:name => 'Sugar', :brand => 'C&H', :image => 'http://i.walmartimages.com/i/p/00/01/58/00/03/0001580003061_500X500.jpg')
i4 = Ingredient.create(:name => 'Milk', :brand => 'Clover', :image => 'http://images.wisegeek.com/pitcher-of-milk.jpg')
i5 = Ingredient.create(:name => 'Butter', :brand => 'Land-O-Lakes', :image => 'http://www.cheesemaking.com/images/recipes/35Butter/Pics/pic51.jpg')
i6 = Ingredient.create(:name => 'Bacon', :brand => 'Kirkland Signature',:image => 'http://4.bp.blogspot.com/-HX7l3B-dPXY/UN0FeGidWHI/AAAAAAAADZE/FF9svNR700I/s1600/crispy-bacon.jpg')

r1.ingredient_measurements.create(ingredient_id: i1.id, measurement: '1 cup')
r1.ingredient_measurements.create(ingredient_id: i2.id, measurement: '2 whole')
r1.ingredient_measurements.create(ingredient_id: i3.id, measurement: '1/2 cup')

r2.ingredient_measurements.create(ingredient_id: i1.id, measurement: '2 cups')
r2.ingredient_measurements.create(ingredient_id: i2.id, measurement: '10 whole')
r2.ingredient_measurements.create(ingredient_id: i4.id, measurement: '3 cups')
r2.ingredient_measurements.create(ingredient_id: i5.id, measurement: '4 table spoons')


r3.ingredient_measurements.create(ingredient_id: i2.id, measurement: '4 whites')
r3.ingredient_measurements.create(ingredient_id: i3.id, measurement: '3/4 cup')
r3.ingredient_measurements.create(ingredient_id: i4.id, measurement: '1 cup')

tim.recipes << r1
tim.recipes << r2

rafi.recipes << r3

