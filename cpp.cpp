#include <iostream>
#include <stack>

int main() {
    std::stack<int> stack;
    stack.push(1);
    stack.push(2);
    std::cout << stack.top() << std::endl;  // 2
    stack.pop();
    return 0;
}