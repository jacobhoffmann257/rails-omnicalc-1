Rails.application.routes.draw do
  get("/square/new", {controller: "calc", action: "squarenew"})
  get("/square/route/new", {controller: "calc", action: "squarerootnew"})
  get("/payment/new", {controller: "calc", action: "randomnew"})
  get("/", {controller: "calc", action: "squarenew"})
end
