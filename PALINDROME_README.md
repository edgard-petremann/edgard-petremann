# Palindrome Finder in Julia

A comprehensive Julia program to find palindromes in strings.

## Features

- **Check if a string is a palindrome** (case-insensitive, ignores spaces)
- **Find all palindromic substrings** in a string
- **Find the longest palindrome** in a string
- **Count palindromes** in a string

## Installation

Make sure you have Julia installed on your system. You can download it from [julialang.org](https://julialang.org/downloads/).

## Usage

### Run the demo

```bash
julia palindrome_finder.jl
```

### Use in your own code

```julia
include("palindrome_finder.jl")

# Check if a string is a palindrome
is_palindrome("racecar")  # returns true
is_palindrome("hello")    # returns false

# Find all palindromes in a string
palindromes = find_all_palindromes("racecar")
# Returns: ["racecar", "aceca", "cec", "aa", "cc", "ee", "rr"]

# Find the longest palindrome
longest = find_longest_palindrome("babad")
# Returns: "bab" (or "aba", both are valid)

# Count palindromes
count = count_palindromes("aaa")
# Returns: 3
```

## Functions

### `is_palindrome(s::AbstractString) -> Bool`
Check if a string is a palindrome (case-insensitive, ignores spaces).

**Example:**
```julia
is_palindrome("A man a plan a canal Panama")  # true
```

### `find_all_palindromes(s::AbstractString; min_length::Int=2) -> Vector{String}`
Find all unique palindromic substrings in a string.

**Parameters:**
- `s`: The input string to search
- `min_length`: Minimum length of palindromes to find (default: 2)

**Returns:** Vector of unique palindromic substrings, sorted by length (descending)

### `find_longest_palindrome(s::AbstractString) -> String`
Find the longest palindromic substring in a string.

### `count_palindromes(s::AbstractString; min_length::Int=2) -> Int`
Count the number of unique palindromic substrings in a string.

## Algorithm

The program uses the **expand around center** approach:
- For each position in the string, it expands outward to find palindromes
- Checks both odd-length palindromes (single character center) and even-length palindromes (between two characters)
- Time complexity: O(n²) where n is the length of the string
- Space complexity: O(n) for storing palindromes

## Example Output

```
============================================================
Palindrome Finder in Julia
============================================================

📝 Test 1: Checking if strings are palindromes
  "racecar" => true
  "hello" => false
  "A man a plan a canal Panama" => true
  "noon" => true
  "world" => false

📝 Test 2: Finding all palindromes in strings
  "racecar":
    - "racecar"
    - "aceca"
    - "cec"
    - "aa"
    - "cc"
    - "ee"
    - "rr"
  "hello":
    - "ll"
  "aabbaa":
    - "aabbaa"
    - "abba"
    - "aa"
    - "bb"
  "abcdefg":
    No palindromes found

📝 Test 3: Finding the longest palindrome
  "babad" => "bab"
  "cbbd" => "bb"
  "racecar" => "racecar"
  "noon" => "noon"

📝 Test 4: Counting palindromes
  "aaa" => 3 palindromes
  "abc" => 0 palindromes
  "racecar" => 7 palindromes

============================================================
```

## License

Free to use and modify.
