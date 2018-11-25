# Define 4 methods.
# The first takes a string (as an argument), and then returns the string + “ will be”
#     the second takes a string, and returns the string + “ won’t be”
#     the third takes a string and returns the string + “ impeached.”
#     and the fourth is called trump_predictor.

# trump_predictor takes a string, but then you must use the previous functions to get from this method call trump_predictor(“Trump”)
#     to whatever outcome you think is more likely, but using only the previously defined functions.
#     Store the output of trump_predictor in a well named variable.
#     (For example, if you think he won’t be impeached, only call the methods that matter, so the output string will be “Trump won’t be impeached.”)

def will_be(president)
    result = president + " will be"
    return result
end

def wont_be(president)
    result  = president + " won't be"
    return result
end

def impeached(verdict)
    result = verdict + " impeached."
    return result
end

def impeachment_predictor(president)
    # this is the method we define before that will require a name of a president
    will_be_result = will_be(president)
    # "Trump" + " will be" saved to will_be_result local variable
    wont_be_result = wont_be(president)
    # "Trump" + " won't be" saved to wont_be_result local variable
    impeached_result = impeached(will_be_result)
    # return impeached_result
    # result = impeached(will_be(str))
    result = impeached(will_be(president))
    # 'will_be' method will be resolved/returned first
    # 'impeached' method will use 'will_be' string result as the argument
end

impeachment_verdict = impeachment_predictor("Trump")
puts impeachment_verdict
impeachment_verdict = impeachment_predictor("Clinton")
puts impeachment_verdict