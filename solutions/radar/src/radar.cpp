// radar.cpp
#include "../include/radar.h"
#include <cmath>
#include <algorithm>

Radar::Radar() {}

bool Radar::compareObstacles(const std::pair<int, int>& a, const std::pair<int, int>& b) {
    double angleA = atan2(a.second, a.first);
    double angleB = atan2(b.second, b.first);
    if (angleA < 0) angleA += 2 * M_PI;
    if (angleB < 0) angleB += 2 * M_PI;
    return angleA < angleB;
}

std::vector<int> Radar::scanObstacles(int visibility, const std::vector<std::pair<int, int>>& obstacles) {
    std::vector<std::pair<int, int>> visibleObstacles;
    for (const auto& obstacle : obstacles) {
        if (sqrt(pow(obstacle.first, 2) + pow(obstacle.second, 2)) <= visibility) {
            visibleObstacles.push_back(obstacle);
        }
    }
    std::sort(visibleObstacles.begin(), visibleObstacles.end(), compareObstacles);
    std::vector<int> result;
    for (const auto& obstacle : visibleObstacles) {
        result.push_back(std::find(obstacles.begin(), obstacles.end(), obstacle) - obstacles.begin());
    }
    return result;
}