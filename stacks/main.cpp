#include "stack.h"
#include <cstdlib>

int main(){

    mentor::Stack<int> s;
    s.push(1);
    s.push(2);
    s.push(3);
    s.peek();
    std::cout << "Size of the stack: " << s.size() << std::endl;
    std::cout << s << std::endl;
    s.pop();
    std::cout << "Size of the stack: " << s.size() << std::endl;
    std::cout << s << std::endl;
    std::cout << "Is the stack empty?: " << s.isEmpty() << std::endl;
    s.pop();
    s.pop();
    std::cout << "Size of the stack: " << s.size() << std::endl;
    std::cout << s << std::endl;
    std::cout << "Is the stack empty?: " << s.isEmpty() << std::endl;

    mentor::Stack<std::pair<int, int>> s2;
    std::pair<int,int> pair;
    pair.first = 1;
    pair.second = 2;
    s2.push(pair);
    pair.first = 3;
    pair.second = 4;
    s2.push(pair);
    std::cout << s2 << std::endl;
    s2.pop();
    std::cout << s2 << std::endl;


    return EXIT_SUCCESS;
}