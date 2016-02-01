class MakeCallJob < ActiveJob::Base
  queue_as :default

  @@twilio_sid = ENV['TWILIO_ACCOUNT_SID']
  @@twilio_token = ENV['TWILIO_AUTH_TOKEN']
  @@twilio_number = ENV['TWILIO_NUMBER']

  def perform(to, url)
    client = Twilio::REST::Client.new @@twilio_sid, @@twilio_token
    #connect an outbound call to the number subitted
    call = client.calls.create(
    :from => @@twilio_number,
    :to => to,
    # :url => "http://161464a.ngrok.com/connect"
    :url => url #fetch instructions from this url when the call connects
    )
  end
end
