#include "tick-difference"

#define RUN_TESTS
#include <YSI\y_testing>

Test:Zero() {
    new val = GetTickCountDifference(0, 0);
    printf("val: %d", val);
    ASSERT(val == 0);
}

Test:Positive() {
    new val = GetTickCountDifference(0, 100);
    printf("val: %d", val);
    ASSERT(val == 100);
}

Test:Negative() {
    new val = GetTickCountDifference(0, -100);
    printf("val: %d", val);
    ASSERT(val == 100);
}

Test:PositiveSwapped() {
    new val = GetTickCountDifference(100, 0);
    printf("val: %d", val);
    ASSERT(val == 100);
}

Test:NegativeSwapped() {
    new val = GetTickCountDifference(-100, 0);
    printf("val: %d", val);
    ASSERT(val == 100);
}

Test:CellMin() {
    new val = GetTickCountDifference(cellmin, 0);
    printf("val: %d", val);
    ASSERT(val == cellmin);
}

Test:CellMax() {
    new val = GetTickCountDifference(cellmax, 0);
    printf("val: %d", val);
    ASSERT(val == cellmax);
}
