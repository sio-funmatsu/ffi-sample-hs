/* wrapper.cc */

#ifdef __cplusplus
extern "C" {
#endif

#include "point.h"

Point* createPoint(int x, int y) {
    return new Point(x, y);
}

int getPointX(Point* point) {
    return point->getX();
}

int getPointY(Point* point) {
    return point->getY();
}

void destroyPoint(Point* point) {
    delete point;
}

#ifdef __cplusplus
}
#endif
