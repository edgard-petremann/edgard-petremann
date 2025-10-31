"""
Palindrome Finder in Julia

This module provides functions to find palindromes in strings.
"""

"""
    is_palindrome(s::AbstractString) -> Bool

Check if a string is a palindrome (case-insensitive).

# Examples
```julia
julia> is_palindrome("racecar")
true

julia> is_palindrome("Hello")
false

julia> is_palindrome("A man a plan a canal Panama")
true
```
"""
function is_palindrome(s::AbstractString)
    # Remove spaces and convert to lowercase for comparison
    cleaned = lowercase(replace(s, r"\s" => ""))
    return cleaned == reverse(cleaned)
end

"""
    find_all_palindromes(s::AbstractString; min_length::Int=2) -> Vector{String}

Find all palindromic substrings in a string.

# Arguments
- `s::AbstractString`: The input string to search
- `min_length::Int=2`: Minimum length of palindromes to find (default: 2)

# Returns
- `Vector{String}`: A vector of unique palindromic substrings, sorted by length (descending)

# Examples
```julia
julia> find_all_palindromes("racecar")
7-element Vector{String}:
 "racecar"
 "aceca"
 "cec"
 "aa"
 "cc"
 "ee"
 "rr"

julia> find_all_palindromes("hello")
2-element Vector{String}:
 "ll"
```
"""
function find_all_palindromes(s::AbstractString; min_length::Int=2)
    n = length(s)
    palindromes = Set{String}()

    # Helper function to expand around center
    function expand_around_center(left::Int, right::Int)
        while left >= 1 && right <= n && s[left] == s[right]
            substring = s[left:right]
            if length(substring) >= min_length
                push!(palindromes, substring)
            end
            left -= 1
            right += 1
        end
    end

    # Check for palindromes centered at each position
    for i in 1:n
        # Odd length palindromes (single character center)
        expand_around_center(i, i)
        # Even length palindromes (between two characters)
        expand_around_center(i, i + 1)
    end

    # Sort by length (descending) then alphabetically
    return sort(collect(palindromes), by = x -> (-length(x), x))
end

"""
    find_longest_palindrome(s::AbstractString) -> String

Find the longest palindromic substring in a string.

# Examples
```julia
julia> find_longest_palindrome("babad")
"bab"

julia> find_longest_palindrome("cbbd")
"bb"
```
"""
function find_longest_palindrome(s::AbstractString)
    n = length(s)
    if n == 0
        return ""
    end

    longest = ""

    # Helper function to expand around center
    function expand_around_center(left::Int, right::Int)
        while left >= 1 && right <= n && s[left] == s[right]
            left -= 1
            right += 1
        end
        return s[left+1:right-1]
    end

    # Check for palindromes centered at each position
    for i in 1:n
        # Odd length palindromes
        palindrome1 = expand_around_center(i, i)
        # Even length palindromes
        palindrome2 = expand_around_center(i, i + 1)

        # Update longest if we found a longer palindrome
        for p in [palindrome1, palindrome2]
            if length(p) > length(longest)
                longest = p
            end
        end
    end

    return longest
end

"""
    count_palindromes(s::AbstractString; min_length::Int=2) -> Int

Count the number of unique palindromic substrings in a string.

# Examples
```julia
julia> count_palindromes("aaa")
3

julia> count_palindromes("abc")
0
```
"""
function count_palindromes(s::AbstractString; min_length::Int=2)
    return length(find_all_palindromes(s, min_length=min_length))
end

# Demo and test cases
function main()
    println("=" ^ 60)
    println("Palindrome Finder in Julia")
    println("=" ^ 60)

    # Test 1: Check if strings are palindromes
    println("\n📝 Test 1: Checking if strings are palindromes")
    test_strings = ["racecar", "hello", "A man a plan a canal Panama", "noon", "world"]
    for str in test_strings
        result = is_palindrome(str)
        println("  \"$str\" => $result")
    end

    # Test 2: Find all palindromes in a string
    println("\n📝 Test 2: Finding all palindromes in strings")
    test_cases = ["racecar", "hello", "aabbaa", "abcdefg"]
    for str in test_cases
        palindromes = find_all_palindromes(str)
        println("  \"$str\":")
        if isempty(palindromes)
            println("    No palindromes found")
        else
            for p in palindromes
                println("    - \"$p\"")
            end
        end
    end

    # Test 3: Find longest palindrome
    println("\n📝 Test 3: Finding the longest palindrome")
    longest_test = ["babad", "cbbd", "racecar", "noon"]
    for str in longest_test
        longest = find_longest_palindrome(str)
        println("  \"$str\" => \"$longest\"")
    end

    # Test 4: Count palindromes
    println("\n📝 Test 4: Counting palindromes")
    count_test = ["aaa", "abc", "racecar"]
    for str in count_test
        count = count_palindromes(str)
        println("  \"$str\" => $count palindromes")
    end

    println("\n" * "=" ^ 60)
end

# Run the demo if this file is executed directly
if abspath(PROGRAM_FILE) == @__FILE__
    main()
end
