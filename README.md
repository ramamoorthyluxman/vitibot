# Radar

## Files

- `Radar.h` and `Radar.cpp`: These files define the `Radar` class, which includes methods for reading radar data from a file, processing the data, and implementing algorithm.

- `main.cpp`: This is the main program that uses the `Radar` class.

## Compilation

This project uses CMake for managing the build process. To compile the project, follow these steps:

1. Navigate to the `build` directory:

```bash
cd build
cmake ..
make
```

## Execution
```bash
./radar < ../data/input1.txt
```

## Results

The program will output, for example for input1.txt:

```bash
Visibility: 1
NumObstacles: 5
0 1
2 2
-1 0
0 -1
1 0
4 0 2 3 
```

# Linear Regression 

## Files

- `LinearRegression.h` and `LinearRegression.cpp`: These files define the `LinearRegression` class, which includes methods for reading data from a file, computing a linear regression model, and implementing the custom RANSAC algorithm.

- `main.cpp`: This is the main program that uses the `LinearRegression` class.

## Compilation

This project uses CMake for managing the build process. To compile the project, follow these steps:

1. Navigate to the `build` directory:

```bash
cd build
cmake ..
make
```


## Execution

The program has the path to the input file as an argument. To execute:

```bash
./linear_regression
```

## Solution and results

In the header file - LinearRegression.h, I have commented the parts of the tasks 1.a, 1.b, 2.a

2.c Complexity The complexity of the algorithm is O(N) where N is the number of points.

2.d The algorithm

2.e The probability of not hitting n model points after k iterations is (1 - (p^n))^k. To find the ideal number of iterations k for a 99% probability of hitting at least once, we solve 1 - (1 - (p^n))^k = 0.99 for k, which gives k = log(1 - 0.99) / log(1 - p^n). For n = 2 and p = 23%, this gives approximately 317 iterations.

The program will output: 
```bash   
Linear regression model: y = 0.117921x + 0.398267
Best model: y = -4.07809x + 2.05293

```

