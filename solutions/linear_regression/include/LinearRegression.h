// include/LinearRegression.h

#ifndef LINEAR_REGRESSION_H
#define LINEAR_REGRESSION_H

#include <vector>
#include <string>


struct Point {
    double x, y;
};

struct Model {
    double a, b;
};

class LinearRegression {
public:
    // 1.a) Reading the file
    LinearRegression(const std::string& filename);
    void printData();
    // 1.b) Linear regression
    Model computeModel();
    Model computeModelFromPoints(const std::vector<Point>& points);
    // 2.a) The algorithm
    Model customAlgorithm(int n, int k, double t, int d);
private:
    std::vector<Point> data;
    double errorModel(const Point& point, const Model& model);
};



#endif // LINEAR_REGRESSION_H