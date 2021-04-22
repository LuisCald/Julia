msg = "Hello World"
println(msg)
using QuantEcon
# The hashtag comments out a line in Julia
using LinearAlgebra, Statistics
using Plots  # to make Plots

# Make plot
n = 100
ϵ = randn(n)  # returns column vector of 100 draws from a N(0,1) 
plot(1:n, e)  # takes an x,y argument plus other options

# notice the epsilon above. This is generated using latex 
typeof(ϵ)  # gives me the type of ϵ. Here: Array{Float64, 1} i.e., Array{row, columns}
ϵ[1:5]  # row indexing, starts at 1

M = [
    1 2;
    3.5 4
];  # This creates a 2x2 matrix
M[1,2]  # row, column indexing

# For-loop

for i in eachindex(ϵ)  # takes the length of ϵ
    ϵ[i] = randn()
end  # In Julia, you must end the for loop

# Statistics
avg_ϵ = mean(ϵ)
sum_ϵ = sum(ϵ)
print(avg_ϵ, "The sum is:", sum_ϵ)  # use commas to distinguish

# Defining a function
function square(n)
    ϵ = zeros(n)
    for i in eachindex(ϵ)
        ϵ[i] = (1 + randn())^2
    end
    return ϵ
end 

new_ϵ = square(100)
plot(eachindex(ϵ), new_ϵ)

# Handling vectors
a = randn(2)
a.^2  # like matlab, the . is for element-wise operations.