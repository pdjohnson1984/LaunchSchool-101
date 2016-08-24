def prompt(message)
  puts("=> #{message}")
end

def monthly_interest_rate(apr)
  (apr.to_f / 12) / 100
end

def calculate_payment(interest, amount, duration)
  amount.to_i * (interest.to_f / (1 - (1 + interest.to_f)**-duration.to_i))
end

def valid_number?(num)
  num.to_i.nonzero?
end

def valid_decimal?(num)
  num.to_f.nonzero?
end

prompt("Welcome to the Loan Calculator!")

loop do
  amount = ''
  loop do
    prompt("What is the loan amount?")
    amount = gets.chomp

    if valid_decimal?(amount)
      break
    else
      prompt("Please enter a valid loan amount")
    end
  end

  apr_months = ''
  loop do
    prompt("What is the APR?")
    apr_months = monthly_interest_rate(gets.chomp)

    if valid_decimal?(apr_months)
      break
    else
      prompt("Please enter a valid APR")
    end
  end

  duration_months = ''
  loop do
    prompt("What is the duration in months of the loan?")
    duration_months = gets.chomp

    if valid_number?(duration_months)
      break
    else
      prompt("Please enter a valid loadn duration")
    end
  end

  prompt("Your monthly payment is
    #{calculate_payment(apr_months, amount, duration_months).to_f.round(2)}")

  prompt("Do you want to perform another laon calculation?
    (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using Loan Calculator. Good bye!")
