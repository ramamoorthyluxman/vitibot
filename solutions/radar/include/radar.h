// radar.h
#ifndef RADAR_H
#define RADAR_H

#include <vector>
#include <utility>

class Radar {
public:
    Radar();
    std::vector<int> scanObstacles(int visibility, const std::vector<std::pair<int, int>>& obstacles);
private:
    static bool compareObstacles(const std::pair<int, int>& a, const std::pair<int, int>& b);
};

#endif // RADAR_H