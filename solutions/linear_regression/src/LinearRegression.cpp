// src/LinearRegression.cpp

#include "LinearRegression.h"
#include <fstream>
#include <random>
#include <algorithm>
#include <numeric>
#include <limits>
#include <cmath>
#include <iostream>
#include <cstdlib>

// 1.a) Reading the file
LinearRegression::LinearRegression(const std::string& filename) {
    std::ifstream file(filename);
    std::cout<<"file: "<<filename<<std::endl;
    std::cout<<"file: "<<realpath(filename.c_str(), NULL)<<std::endl;
    double x, y;
    while (file >> x >> y) {
        data.push_back({x, y});
    }
}
void LinearRegression::printData() {
    for (const auto& point : data) {
        std::cout << "x: " << point.x << ", y: " << point.y << std::endl;
    }
}

// 1.b) Linear regression
Model LinearRegression::computeModel() {
    double xSum = 0, ySum = 0, xSquaredSum = 0, xySum = 0;
    for (const auto& point : data) {
        xSum += point.x;
        ySum += point.y;
        xSquaredSum += point.x * point.x;
        xySum += point.x * point.y;
    }
    double n = data.size();
    double a = (n * xySum - xSum * ySum) / (n * xSquaredSum - xSum * xSum);
    double b = (ySum - a * xSum) / n;
    return {a, b};
}
// src/LinearRegression.cpp

Model LinearRegression::computeModelFromPoints(const std::vector<Point>& points) {
    double xSum = 0, ySum = 0, xySum = 0, xSquareSum = 0;
    int n = points.size();

    for (const auto& point : points) {
        xSum += point.x;
        ySum += point.y;
        xySum += point.x * point.y;
        xSquareSum += point.x * point.x;
    }

    double xMean = xSum / n;
    double yMean = ySum / n;

    double a = (n * xySum - xSum * ySum) / (n * xSquareSum - xSum * xSum);
    double b = yMean - a * xMean;

    return {a, b};
}

double LinearRegression::errorModel(const Point& point, const Model& model) {
    return std::abs(point.y - (model.a * point.x + model.b));
}

// 2.a) The algorithm
Model LinearRegression::customAlgorithm(int n, int k, double t, int d) {

    std::random_device rd;
    std::mt19937 gen(rd());
    Model bestModel;
    double bestError = std::numeric_limits<double>::infinity();
    for (int i = 0; i < k; ++i) {
        std::shuffle(data.begin(), data.end(), gen);
        std::vector<Point> candidates(data.begin(), data.begin() + n);
        Model model = computeModelFromPoints(candidates); 
        for (const auto& point : data) {
            if (errorModel(point, model) < t) {
                candidates.push_back(point);
            }
        }
        if (candidates.size() > d) {
            Model betterModel = computeModelFromPoints(candidates);
            double sumError = 0;
            for (const auto& point : candidates) {
                sumError += errorModel(point, betterModel);
            }
            if (sumError < bestError) {
                bestModel = betterModel;
                bestError = sumError;
            }
        }
    }
    return bestModel;
}