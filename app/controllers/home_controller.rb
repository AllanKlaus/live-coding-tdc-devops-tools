class HomeController < ApplicationController
  def success
    render :json => return_json
  end

  def fail_page
    fail 'Raising exception'
  end

  def send_to_sentry
    fail StandardError if params[:error]
    render :json => return_json
  rescue StandardError => e
    send_error
    render :error_page
    # render :json => { error: e.message }
  end

  private

  def return_json
    {
      event: 'TDC Floripa 2019',
      trail: 'Devops Tools',
      speaker: 'Allan Klaus'
    }
  end

  def send_error
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
