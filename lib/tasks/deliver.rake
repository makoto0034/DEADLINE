namespace :deliver do
  desc "メール送信"
  task send: :environment do
    FoodMailer.send_food_to_user.deliver
  end
end
