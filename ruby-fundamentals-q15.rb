# *Problem 15*
# Using these actual figures make a method (or methods) that takes as an argument a person’s income
# and returns the amount of tax that should be paid on that income (before being fiddled about with various exemptions and deductibles).
# Return a hash of the raw tax payable (in dollars), and what what percentage of the person’s income that represents.

# $0 – $18,200 Nil
# $18,201– $37,000 19c for each $1 over $18,200
# $37,001 - $87,000 $3,572 plus 32.5c for each $1 over $37,000
# $87,001 - $180,000 $19,822 plus 37c for each $1 over $87,000
# $180,001 and over $54,232 plus 45c for every $1 over $180,000

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

print tax_payable_as_percentage(35_000)