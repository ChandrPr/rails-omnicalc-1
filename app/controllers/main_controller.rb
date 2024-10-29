class MainController < ApplicationController
  def square
    render({ :template => "page_templates/square_new"})
  end
  def square_result
    @number = params['number'].to_f
    @output = @number ** 2
    render({ :template => "page_templates/square_result"})
  end
  def squareroot
    render({ :template => "page_templates/squareroot_new"})
  end
  def squareroot_result
    @user_number = params['user_number'].to_f
    @output = @user_number ** (1/2.0)
    render({ :template => "page_templates/squareroot_result"})
  end
  def payment
    render({ :template => "page_templates/payment_new"})
  end
  def payment_result
    @user_apr = params['user_apr'].to_f
    @user_years = params['user_years'].to_i
    @user_pv = params['user_pv'].to_f
    r = @user_apr/100/12
    n = @user_years*12
    numerator = r*@user_pv
    denominator = 1-(1+r)**(-n)
    @output = numerator / denominator
    
    render({ :template => "page_templates/payment_result"})
  end
  def random
    render({ :template => "page_templates/random_new"})
  end
  def random_result
    @user_min = params['user_min'].to_f
    @user_max = params['user_max'].to_f
    @output = rand(@user_min..@user_max)
    render({ :template => "page_templates/random_result"})
  end
end
