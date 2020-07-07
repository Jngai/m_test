class PhonesController < ApplicationController
    def index 
    end

    def check_number_validity
        if (/^(?:(?:\(?(?:00|\+)([1-4]\d\d|[1-9]\d?)\)?)?[\-\.\ \\\/]?)?((?:\(?\d{1,}\)?[\-\.\ \\\/]?){0,})(?:[\-\.\ \\\/]?(?:#|ext\.?|extension|x)[\-\.\ \\\/]?(\d+))?$/i.match(params["phone_number"]))
          #render :plain => "Its a valid number", status: :ok
          redirect_to success_page_path
        else
          render :plain => "Must be a valid phone number", status: :unprocessable_entity
        end
    end
end
