Linear Regression
You have a dataset in the file input.txt. You can visualize this dataset by opening the index.html page with your browser. You should see a scatter plot in 2 dimensions.

The goal is to detect the line that you distinguish and which represents about 23% of the data (very noisy).

1) Linear Regression
a) File Reading
Open the file input.txt with your program. The format is very simple: one point per line, composed of 2 floats separated by a space.

b) Linear Regression
Find a function that performs an affine linear regression online, in the language of your choice, and integrate it to apply it to the dataset.

c) Displaying the Result
Display the equation of the line thus found and visualize the result through the graphical interface. You will notice that linear regression does not give the expected model at all.

2) Algorithm Implementation
a) The Algorithm
Now you will implement an algorithm that, based on the same linear regression model, allows you to find the correct result. You must write the algorithm yourself.

The algorithm is as follows:

Parameters:

data: the dataset of 2d points
computeModel: a function that returns the model (a, b) given a set of points -> here you will use the linear regression function used in 1)
errorModel: a function that returns the error of a point to the model. The smaller the error is, the better the point fits the model.
n: number of points required to create a model
k: number of iterations
t: threshold value the error of a point can't exceed to fit a model
d: number of points to get a valid model
Returns:

The best model found (with the smallest error) that have at least d points
sql
Copy code
iterations = 0
bestModel = none
bestError = infinity
while iterations < k {
    candidates = n values randomly selected in data
    model = the model of the candidates points

    for every point not in candidates {
        if point has an error < t {
            add the point to the candidates
        }
    }

    if number of candidates is > d {
        betterModel = model of updated candidates points (now with a lot more points)
        sumError = the sum of all candidates points error with betterModel
        if sumError < bestError {
            bestModel = betterModel
            bestError = sumError
        }
    }
}
return bestModel.
b) Application
Use your function with the following parameters:

data: the data from the file
computeModel: the linear regression function
errorModel: an error function adapted to the model
n: 2
k: 85
t: 0.02
d: 20
c) Complexity
Considering that the calculation of the model and error are in O(1), what is the complexity of your algorithm implementation, depending on N the number of points and K the number of iterations?

d) Bonus
Do you know the name of the algorithm you implemented?

e) Bonus 2
Knowing that the number of valid points for the desired model represents p% of the points. Knowing that n points are randomly selected at each iteration and that there are k iterations. What is the probability of not selecting n points of the model after k iterations? By extension, express the ideal number of iterations k so that there is at least a 99% probability of selecting n points of the model at least once. Apply the formula for n = 2 and p = 23% and provide the result.