Radar
You have as input a list of obstacles and their positions (x, y).
The objective is to determine the order in which the obstacles will be scanned,
considering that the radar starts scanning at angle 0 initially (along the x-axis),
and rotates counterclockwise.

We assure you that there is no ambiguity, normally...

Input:
line 1: an integer V indicating the visibility distance of the radar. 1 <= V <= 1000
line 2: an integer N indicating the number of obstacles. 1 <= N <= 10,000
lines 3 to N+2: two integers x_i y_i separated by a space indicating the coordinates of the obstacle. 1 <= x_i, y_i <= 1000.
Output:
An ordered list of obstacle indexes sorted according to the radar principle.
The expected results for the inputs are available in the corresponding outputX.txt file.

Example:
makefile
Copy code
Input:
1
5
0 1
2 2
-1 0
0 -1
1 0

Output:
4 0 2 3

There are 5 obstacles. Starting from the right (x-axis) and rotating counterclockwise,
we first encounter (1, 0) with index 4, then (0, 1) with index 0,
then (-1, 0) with index 2, and finally (0, -1) with index 3.

Moreover, the obstacle (2, 2) is located 4 units away from the radar (which has a visibility of V=1 unit only). Thus, it is not visible.

So, the output is 4 0 2 3.