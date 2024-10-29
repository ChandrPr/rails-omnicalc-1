Rails.application.routes.draw do
  get("/", { :controller => "main", :action => "square" })
  get("/square/new", { :controller => "main", :action => "square" })
  get("/square/results", { :controller => "main", :action => "square_result" })

  get("/square_root/new", { :controller => "main", :action => "squareroot" })
  get("/square_root/results", { :controller => "main", :action => "squareroot_result" })

  get("/payment/new", { :controller => "main", :action => "payment" })
  get("/payment/results", { :controller => "main", :action => "payment_result" })

  get("/random/new", { :controller => "main", :action => "random" })
  get("/random/results", { :controller => "main", :action => "random_result" })
end
