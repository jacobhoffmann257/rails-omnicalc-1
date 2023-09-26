Rails.application.routes.draw do
  get("/square/new", {controller: "calc", action: "squarenew"})
  get("/square_root/new", {controller: "calc", action: "squarerootnew"})
  get("/payment/new",{controller:"calc", action: "paymentnew"})
  get("/random/new", {controller: "calc", action: "randomnew"})
  get("/", {controller: "calc", action: "squarenew"})
end
