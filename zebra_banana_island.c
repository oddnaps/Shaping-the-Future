//Header Files
#include<stdio.h>
#include<math.h>
#include<string.h>
#include<stdlib.h>

//Constant Declaration
#define PI 3.14159265

int main()
{
	//Variable Declaration
	int num1, num2;
	float result;
	char str[50];

	//Take User Input
	printf("Enter two Numbers: ");
	scanf("%d %d", &num1, &num2);

	//Calculate Result
	result = num1 + num2;

	//Display the Result
	printf("Sum of %d and %d is %f \n", num1, num2, result);

	//Take String Input
	printf("Enter a String: ");
	scanf("%s", str);

	//Display the String
	printf("You entered: %s \n", str);

	//Compute the Reverse of the String
	strrev(str); 

	//Display the Reversed String
	printf("Reverse of entered string is %s \n", str);

	//Compute the Square Root
	result = sqrt(num1);

	//Display the Result
	printf("Square Root of %d is %f \n", num1, result);

	//Compute the Sine of 30 Degrees
	result = sin(PI / 6);

	//Display the Result
	printf("Sine of 30 Degrees is %f \n", result);


	//Compute the Subtraction
	result = num1 - num2;

	//Display the Result
	printf("Subtraction of %d and %d is %f \n", num1, num2, result);

	//Compute the Multiplication
	result = num1 * num2;

	//Display the Result
	printf("Multiplication of %d and %d is %f \n", num1, num2, result);

	//Compute the Division
	result = num1 / num2;

	//Display the Result
	printf("Division of %d and %d is %f \n", num1, num2, result);

	//Compute the Modulus
	result = num1 % num2;

	//Display the Result
	printf("Modulus of %d and %d is %f \n", num1, num2, result);

	//Compute the Integer Power
	result = pow(num1, num2);

	//Display the Result
	printf("Power of %d and %d is %f \n", num1, num2, result);

	//Compute the Factorial
	result = factorial(num1);

	//Display the Result
	printf("Factorial of %d is %f \n", num1, result);

	//Compute the Greatest Common Divisor
	result = gcd(num1, num2);

	//Display the Result
	printf("Greatest Common Divisor of %d and %d is %f \n", num1, num2, result);

	//Compute the LCM
	result = lcm(num1, num2);

	//Display the Result
	printf("Least Common Multiple of %d and %d is %f \n", num1, num2, result);

	//Compute the Length 
	result = strlen(str);

	//Display the Result
	printf("Length of the string is %f \n", result);

	//Compute the ASCII Value
	result = (int)str[0];

	//Display the Result
	printf("ASCII value of the first character of string is %f \n", result);

	//Compute the Maximum Number
	result = max(num1, num2);

	//Display the Result
	printf("Maximum of %d and %d is %f \n", num1, num2, result);

	//Compute the Minimum Number
	result = min(num1, num2);

	//Display the Result
	printf("Minimum of %d and %d is %f \n", num1, num2, result);

	//Compute the Absolute Value
	result = abs(num1);

	//Display the Result
	printf("Absolute Value of %d is %f \n", num1, result);

	//Compute the Ceil Value
	result = ceil(num1);

	//Display the Result
	printf("Ceil Value of %d is %f \n", num1, result);

	//Compute the Floor Value
	result = floor(num1);

	//Display the Result
	printf("Floor Value of %d is %f \n", num1, result);

	//Compute the Integer Partition
	result = (int)partition(num1, num2);

	//Display the Result
	printf("Partition of %d and %d is %f \n", num1, num2, result);

	//Compute the Trigonometric Function
	result = tan(PI / 6);

	//Display the Result
	printf("Tangent of 30 Degrees is %f \n", result);

	//Compute the Logarithmic Function
	result = log(num1);

	//Display the Result
	printf("Logarithm of %d is %f \n", num1, result);

	//Compute the Hyperbolic Function
	result = cosh(num1);

	//Display the Result
	printf("Hyperbolic Cosine of %d is %f \n", num1, result);

	//Compute the Exponential Function
	result = exp(num1);

	//Display the Result
	printf("Exponential of %d is %f \n", num1, result);

	//Compute the Gamma Function
	result = gamma(num1);

	//Display the Result
	printf("Gamma Function of %d is %f \n", num1, result);

	//Compute the Bessel Function
	result = bessel(num1);

	//Display the Result
	printf("Bessel Function of %d is %f \n", num1, result);

	//Compute the Inverse Trigonometric Function
	result = acos(PI / 6);

	//Display the Result
	printf("Inverse Cosine of 30 Degrees is %f \n", result);

	//Compute the Erf Function
	result = erf(num1);

	//Display the Result
	printf("Error Function of %d is %f \n", num1, result);

	//Compute the Random Number
	result = rand();

	//Display the Result
	printf("Random Number is %f \n", result);

	//Compute the Ln Function
	result = ln(num1);

	//Display the Result
	printf("Natural Logarithm of %d is %f \n", num1, result);

	//Compute the Arc Tangent Function
	result = atan(PI / 6);

	//Display the Result
	printf("Arc Tangent of 30 Degrees is %f \n", result);

	//Compute the Arc Cosine Function
	result = acos(PI / 6);

	//Display the Result
	printf("Arc Cosine of 30 Degrees is %f \n", result);

	//Compute the Hyperbolic Sine Function
	result = sinh(num1);

	//Display the Result
	printf("Hyperbolic Sine of %d is %f \n", num1, result);

	//Compute the Cube Root
	result = cbrt(num1);

	//Display the Result
	printf("Cube Root of %d is %f \n", num1, result);

	//Compute the Arc Sine Function
	result = asin(PI / 6);

	//Display the Result
	printf("Arc Sine of 30 Degrees is %f \n", result);

	//Compute the Logarithmic Base 10 Function
	result = log10(num1);

	//Display the Result
	printf("Logarithm of Base 10 of %d is %f \n", num1, result);

	//Compute the Series Sum
	result = series_sum(num1);

	//Display the Result
	printf("Series Sum of %d is %f \n", num1, result);

	//Compute the Inverse Hyperbolic Cosine Function
	result = acosh(num1);

	//Display the Result
	printf("Inverse Hyperbolic Cosine of %d is %f \n", num1, result);

	//Compute the Inverse Hyperbolic Sine Function
	result = asinh(num1);

	//Display the Result
	printf("Inverse Hyperbolic Sine of %d is %f \n", num1, result);

	//Compute the Inverse Hyperbolic Tangent Function
	result = atanh(PI / 6); 

	//Display the Result
	printf("Inverse Hyperbolic Tangent of 30 Degrees is %f \n", result);

	//Compute the Logarithmic Base 2 Function
	result = log2(num1);

	//Display the Result
	printf("Logarithm of Base 2 of %d is %f \n", num1, result);

	//Compute the Fractional Part
	result = fractional_part(num1);

	//Display the Result
	printf("Fractional Part of %d is %f \n", num1, result);

	//Compute the Integer Part
	result = integer_part(num1);

	//Display the Result
	printf("Integer Part of %d is %f \n", num1, result);

	//Compute the Factorial Digit Sum
	result = factorial_digit_sum(num1);

	//Display the Result
	printf("Factorial Digit Sum of %d is %f \n", num1, result);

	//Compute the Sum of Squares
	result = sum_of_squares(num1, num2);

	//Display the Result
	printf("Sum of Squares of %d and %d is %f \n", num1, num2, result);

	//Compute the Factorial Quotient
	result = factorial_quotient(num1, num2);

	//Display the Result
	printf("Factorial Quotient of %d and %d is %f \n", num1, num2, result);

	//Compute the Perfect Number
	result = perfect_number(num1);

	//Display the Result
	printf("Perfect Number of %d is %f \n", num1, result);

	//Compute the Triangular Number
	result = triangular_number(num1);

	//Display the Result
	printf("Triangular Number of %d is %f \n", num1, result);

	//Compute the Divisors
	result = divisors(num1);

	//Display the Result
	printf("Divisors of %d is %f \n", num1, result);

	//Compute the Prime Factors
	result = prime_factors(num1);

	//Display the Result
	printf("Prime Factors of %d is %f \n", num1, result);

	//Compute the Permutation
	result = permutation(num1, num2);

	//Display the Result
	printf("Permutation of %d and %d is %f \n", num1, num2, result);

	//Compute the Combination 
	result = combination(num1, num2);

	//Display the Result
	printf("Combination of %d and %d is %f \n", num1, num2, result);

	//Compute the Fibonacci Number
	result = fibonacci(num1);

	//Display the Result
	printf("Fibonacci Number of %d is %f \n", num1, result);

	//Compute the Harmonic Number
	result = harmonic(num1);

	//Display the Result
	printf("Harmonic Number of %d is %f \n", num1, result);

	//Compute the Palindrome
	result = palindrome(str);

	//Display the Result
	printf("Palindrome of %s is %f \n", str, result);

	//Compute the Prime Number
	result = prime(num1);

	//Display the Result
	printf("Prime Number of %d is %f \n", num1, result);

	//Compute the Armstrong Number
	result = armstrong(num1);

	//Display the Result
	printf("Armstrong Number of %d is %f \n", num1, result);

	//Compute the Perfect Square
	result = perfect_square(num1);

	//Display the Result
	printf("Perfect Square of %d is %f \n", num1, result);

	//Compute the Amicable Numbers
	result = amicable_numbers(num1, num2);

	//Display the Result
	printf("Amicable Numbers of %d and %d is %f \n", num1, num2, result);

	//Compute the Automorphic Number
	result = automorphic(num1);

	//Display the Result
	printf("Automorphic Number of %d is %f \n", num1, result);

	//Compute the Strong Number
	result = strong(num1);

	//Display the Result
	printf("Strong Number of %d is %f \n", num1, result);

	//Compute the Sum of Digit
	result = sum_of_digit(num1);

	//Display the Result
	printf("Sum of Digit of %d is %f \n", num1, result);

	//Compute the Happy Number
	result = happy(num1);

	//Display the Result
	printf("Happy Number of %d is %f \n", num1, result);

	//Compute the Abundant Number
	result = abundant(num1);

	//Display the Result
	printf("Abundant Number of %d is %f \n", num1, result);

	//Compute the Deficient Number
	result = deficient(num1);

	//Display the Result
	printf("Deficient Number of %d is %f \n", num1, result);

return 0;
}