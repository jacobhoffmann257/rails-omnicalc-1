class CalcController < ApplicationController
  def squarenew
    render({template: "calc_template/squarenew"})
  end
  def squaredone
    number = params.fetch("square")
    @num = number.to_f
    @squared = number.to_f * number.to_f
    render({template: "calc_template/squaredone"})
  end
  def squarerootnew
    render({template: "calc_template/squarerootnew"})
  end
  def squarrootdone
    render({template: "calc_template/squarerootdone"})
  end
  def randomnew
    render({template: "calc_template/randomnew"})
  end
  def randomdone
    render({template: "calc_template/randomdone"})
  end
  def paymentnew
    render({template: "calc_template/paymentnew"})
  end
  def paymendone
    render({template: "calc_template/paymentdone"})
  end
end
