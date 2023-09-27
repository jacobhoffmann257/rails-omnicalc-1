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
  def findroot
    number = params.fetch("square").to_f
    @num = number.to_s
    @root = Math.sqrt(number)
    render({template: "calc_template/squarerootdone"})
  end
  def randomnew
    render({template: "calc_template/randomnew"})
  end
  def randomdone
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    @num = rand(@min..@max)
    render({template: "calc_template/randomdone"})
  end
  def paymentnew
    render({template: "calc_template/paymentnew"})
  end
  def paymentdone
    apr_raw = params.fetch("apr").to_f
    @aprstring=apr_raw.to_fs(:percentage, {:precision => 4})
    @years = params.fetch("years").to_f
    @pv = params.fetch("principal").to_f

    n = @years *12
    apr = apr_raw/100
    r= apr/12
    numerator = r * @pv
    denominator = 1-((1+r)**-n)
    payment = numerator/denominator
    @paymentstring = payment.to_fs(:currency)
    render({template: "calc_template/paymentdone"})
  end
end
