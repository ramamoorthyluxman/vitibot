// main.cpp
#include "../include/radar.h"
#include <iostream>
#include <vector>
#include <utility>

int main() {
    int visibility;
    std::cin >> visibility;
    int numObstacles;
    std::cin >> numObstacles;
    std::vector<std::pair<int, int>> obstacles(numObstacles);
    for (int i = 0; i < numObstacles; ++i) {
        std::cin >> obstacles[i].first >> obstacles[i].second;
    }
    std::cout << "Visibility: " << visibility << '\n';
    std::cout << "NumObstacles: " << numObstacles << '\n';
    for (const auto& obstacle : obstacles) {
        std::cout << obstacle.first << ' ' << obstacle.second << '\n';
    }
    Radar radar;
    std::vector<int> result = radar.scanObstacles(visibility, obstacles);
    for (const auto& index : result) {
        std::cout << index << ' ';
    }
    std::cout << '\n';
    return 0;
}