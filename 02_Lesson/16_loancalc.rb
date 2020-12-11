#  m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

# m = p * (j / 
#               (1 - 
#                     (1 + j)**(-n)
#                                   )
#                                     )

# Goal:
# get loan amount, APR, duration
# output monthly interest rate, loan duration in months, monthly payment

# Inf. Pseudocode
# get loan_amount, apr, loan_dur
# monthly_rate = apr.to_f / 12
# solve equation mindful of precedence as tabbed out above

def loan_calc(loan_amount, apr_int, loan_dur_years)
  p monthly_rate = (apr_int.to_f / 1200)
  p loan_dur_months = loan_dur_years * 12
  monthly_payment = (loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_dur_months))))
  p monthly_payment
end

p loan_calc(1000, 10, 1)
p loan_calc(400_000, 8.5,30)
