// src/main.cpp

#include "LinearRegression.h"
#include <iostream>
#include <unistd.h>

int main() {

    // 1.a) Reading the file
    LinearRegression lr("../data/input.txt");
    // 1.b) Linear regression
    Model model = lr.computeModel();
    lr.printData();
    // 1.c) Displaying the result
    std::cout << "Linear regression model: y = " << model.a << "x + " << model.b << "\n";
    // 2.b) Application
    Model bestModel = lr.customAlgorithm(2, 85, 0.02, 20);
    std::cout << "Best model: y = " << bestModel.a << "x + " << bestModel.b << "\n";
    return 0;
}