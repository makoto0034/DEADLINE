class FoodMailer < ApplicationMailer
  default from: "makotosaitou1999@gmail.com"

  def send_food_to_user
    #今日の廃棄
    @food_list = []
    today = Date.today.strftime("%Y-%m-%d")
    @expirations = Expiration.all
    @expirations.each do |expiration|
      if expiration.deadline.strftime("%Y-%m-%d") == today
        @food_list << [expiration.name,expiration.count,expiration.deadline.strftime("%Y-%m-%d %H:%M")]
      end
    end
    mail(
      to: "yutakasaitou@me.com",
      subject: "今日の廃棄食材" #メールのタイトル,
       #宛先
    )
  end
end
