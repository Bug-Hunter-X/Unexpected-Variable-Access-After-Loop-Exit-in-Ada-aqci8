# Ada Loop Exit Bug

This repository demonstrates a common error in Ada programming related to accessing loop variables after exiting a loop prematurely using the `exit` statement.  The bug arises when a loop iterator is used after the loop terminates. The solution addresses the problem by introducing a flag indicating whether the loop completed normally or not.

## Bug Description
The program includes a loop that iterates through an array. If a condition is met, the `exit` statement is used to terminate the loop early. The code then attempts to access the loop counter variable outside the loop's scope, which may lead to undefined behavior or a runtime error, `Constraint_Error` in Ada, because the loop variable's value depends on the loop completion state. 

## Solution
The solution restructures the code to avoid accessing loop variables after an early exit. A boolean variable is introduced to check if the loop completed normally or not, ensuring a safe and consistent way to handle the variable used in the loop. 