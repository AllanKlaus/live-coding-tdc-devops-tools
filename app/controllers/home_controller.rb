class HomeController < ApplicationController
  def success
    render :json => return_json
  end

  def fail
    fail 'Raising exception'
    render :json => return_json
  end
  
  def send_to_sentry
    fail StandardError if params[:error]
    puts 'vagetais'
    render :json => return_json
  rescue StandardError => e
    error_on_send
    render :pagina_error
  end

  def loop
    while(true)do
    end
  end

  private

  def return_json
    { name: 'Allan Klaus' }
  end

  def error_on_send
    Raven.capture_message("When I want to send an error to sentry",
      extra: {
        error: 'Failed cause I want',
        file: 'home_controller.rb',
        method: 'get',
        my_parameter: 'This parameter is what I want'
      },
      level: 'error'
    )
  end
end
