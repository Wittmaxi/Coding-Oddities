#include <iostream>

int main() {
    double a = 100000000000000000;
    std::cout << std::fixed;
    while (a > 0) {
        --a;
        std::cout << a << "\n";
    }
}