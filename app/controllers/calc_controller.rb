Class CalcController < ApplicationController
  def squarenew
    render({template: "calc_template/squarenew"})
  end
  def squaredone
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
