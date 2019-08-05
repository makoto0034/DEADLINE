# Preview all emails at http://localhost:3000/rails/mailers/food_mailer
class FoodMailerPreview < ActionMailer::Preview
  def food
    FoodMailer.send_food_to_user
  end

end
