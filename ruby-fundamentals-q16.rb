# *Problem 16*
# Write a method that asks the user for a salary (as number), and a percentage.
# The percentage will be a guess by the person as to how much tax is paid on a certain salary.
# Using the previous method (Problem 15), return a hash of a the guess, the actual percentage, and the difference between the two (a three key hash).
# Write to screen each of these in a readable format. (You might consider cleaning the user input as a small extension.)

def income_tax_payable(income)

    if income >= 0 && income <= 18_200
            total_tax_payable = 0
            return total_tax_payable.to_i
    elsif
        income >= 18_201 && income <= 37_000
            tax_rate = 0.19
            tax_calculation = (income - 18_200) * tax_rate
            total_tax_payable = tax_calculation
            return total_tax_payable.to_i
    elsif
        income >= 37_001 && income <= 87_000
            base_tax = 3_572
            tax_rate = 0.325
            tax_calculation = (income - 37_000) * tax_rate
            total_tax_payable = base_tax + tax_calculation
            return total_tax_payable.to_i
    elsif
        income >= 87_001 && income <= 180_000
            base_tax = 19_822
            tax_rate = 0.37
            tax_calculation = (income - 87_000) * tax_rate
            total_tax_payable = base_tax + tax_calculation
            return total_tax_payable.to_i
    elsif
        income >= 180_001
            base_tax = 54_322
            tax_rate = 0.45
            tax_calculation = (income - 180_000) * tax_rate
            total_tax_payable = base_tax + tax_calculation
            return total_tax_payable.to_i
    end
end

# puts income_tax_payable(35_000)

def tax_payable_as_percentage(income)
    tax_payable_as_percentage = Hash.new

    tax_payable = income_tax_payable(income).to_f
    raw_tax_payable = tax_payable.round(2)
    tax_payable_as_percentage[:raw_tax_payable] = raw_tax_payable

    calculate_percentage = tax_payable / income * 100
    percentage_of_income = calculate_percentage.round(2)
    tax_payable_as_percentage[:percentage_of_income] = percentage_of_income

    return tax_payable_as_percentage
    
end

# print tax_payable_as_percentage(35_000)

# *Problem 16*
# Write a method that asks the user for a salary (as number), and a percentage.
# The percentage will be a guess by the person as to how much tax is paid on a certain salary.
# Using the previous method (Problem 15), return a hash of a the guess, the actual percentage, and the difference between the two (a three key hash).
# # Write to screen each of these in a readable format. (You might consider cleaning the user input as a small extension.)

def calculate_percentage_difference(salary, percentage_guess)
    # creates a new hash to be returned
    guess_vs_actual = Hash.new

    # 'actual' is assignrd to hash returned by method --> {:raw_tax_payable = "", :percentage_of_income = ""}
    actual = tax_payable_as_percentage(salary)

    # 'actual_percentage' is assigned to the value of :percentage_of_income
    actual_percentage = actual[:percentage_of_income]

    # pushes the actual percentage value into the new hash
    guess_vs_actual[:actual_percentage] = actual_percentage

    # stores 'guess' argument value as a variable
    percentage_guess = percentage_guess

    # pushes the guessed percentage into the new hash
    guess_vs_actual[:guessed_percentage] = percentage_guess

    # calculates the difference between actual and guessed percentage
    difference = actual_percentage - percentage_guess

    # pushes the difference between the actual and guessed percentage into the new hash
    guess_vs_actual[:difference] = difference

    return guess_vs_actual
    
end

print calculate_percentage_difference(35_000, 2.10)