convert(::Type{T}, x::Number) where {T<:Number} = T(x)

days = 365

typeof(days)

days_float=Float64(days)

typeof(days_float)

convert(Int64, "1")

parse(Int64,"1")

repeat("hi",1000)

x="hi"^1000

a =3 
b=4 
d=string(a + b)

d

c=string(a)*"+" string(b)

@assert c==string(a)*"+" string(b)

c

a_ray = [1,2,3]


push!(a_ray,4)

pop!(a_ray)

a_ray

# The value assigned to the key must be a name. Ordered Numerical values aren't recognized in Julia. Dictionaries are only initialized to have strings.

flexible_phonebook=Dict("Jenny"=>8675309,"Ghostbusters"=>"555-6787")

flexible_phonebook["Emergency"]=911

#Can’t update because Tuples are immutable, so can’t reassign a new element with a value already used in ordered sequence. Dictionaries are not ordered like tuples and arrays, so can’t index into them. Must use key name not number order of key (doesn’t recognize ordered values as keys).  The dictionary flexible_phonebook was initialized to accept integers as values.


for n in 1:100
    println(n^2)
 end

for n in 1:100
    squares = Dict(n=>n^2)
    println(squares)
 end

squares[10]

for n in 1:100
    square_arr=(n^2)
    println(square_arr)
 end

square_arr= [n^2 for n =  1:100]

for n=1:100
if n %2==0 
    println(n)
else 
    println("odd")
end
end

(n%2==0) ? println(n) : println("odd")

test(3)

function add_one(x,numbers)
    x=0
    for i in 1:numbers
    x+=1
    println(i+1) 
    end
end


add_one

A = [1,2,3,4,5,6]
function increment(A, factor=1)
    A += factor
 end


A1 = broadcast(increment, A1)

A = [1,2,3,4,5,6]
A1=map((x)->x+1,A)


for i in length(A1)
    A2 = A1.+1
    display(A2)
end

import Pkg
Pkg.add("Primes")

import Primes

for num in 1:1000000
  Primes.isprime(num) ? println(num) : nothing
end


using Plots
x=-10:10
f(x) = x^2
plot(x,f)


p1 = plot(x, x)
p2 = plot(x, x.^2)
p3 = plot(x, x.^3)
p4 = plot(x, x.^4)
plot(p1, p2, p3, p4, layout = (4, 1), legend = false)

import Pkg
Pkg.add("PlotlyJS")
plot(p1, p2, p3, p4, layout = (4, 1), legend = false)


function fibonacciN(N)
  F = zeros(N)
   F[1] = 1
   F[2] = 2
   for i in 3:N
   F[i] = F[i-1] + F[i-2]
    end
    F
end

fibonacciN(7)


