# Create a new ​array_spec.rb​ file.
# Create an example group using ​RSpec.describe​ with an argument of ​Array​.
# This represent Ruby's native Array class.
# Add an example with a docstring of your choice.
# Write an assertion that tests that the initial length of ​subject​ is 0.
# In the same example, invoke the ​push​ method to add an element to the ​subject​ array.
# Write another assertion to check that the length of the array is now 1.
# Questions for this assignment
# Paste your complete code below.
# What does the subject helper method return?
# Why is better to pass a class argument to the describe method instead of a string with the class name?

describe Array do
  it 'starts empty' do
    expect(subject.length).to be 0
    subject.push(1)
    expect(subject.length).to be 1
  end
end
