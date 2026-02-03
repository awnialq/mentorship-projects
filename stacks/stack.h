#pragma once
#include <iostream>
#include <ostream>





















































template<typename A, typename B>
std::ostream& operator<<(std::ostream& os, const std::pair<A,B>& p){
    return os << "(" << p.first << ", " << p.second << ")";
}
namespace mentor{

    template<typename T> class Stack{
        class Node{
            public:
                Node(const T& value){
                    val = value;
                    next = nullptr;
                }

                T val;
                Node *next;
        };

        public:

            Stack(){
                s = 0;
                top = nullptr;
            }

            ~Stack(){
                while(top != nullptr){
                    Node* temp = top;
                    top = top->next;
                    delete temp;
                }
            }

            Stack(const Stack& other) = delete;
            Stack& operator=(const Stack& other) = delete;

        public:
            void push(const T& val){
                if(top == nullptr){
                    top = new Node(val);
                    ++s;
                    return;
                }
                Node* oldTop = top;
                top = new Node(val);
                top->next = oldTop;
                ++s;
            }
            void pop(){
                if(s != 0){
                    T temp = top -> val;
                    Node *temp_ref = top;
                    top = top->next;
                    delete temp_ref;
                    s--;
                    std::cout << "Popped: " << temp << std::endl;
                }
                else{
                    std::cout << "Popped: " << std::endl;
                }

                return;
            }
            void peek(){
                std::cout << "Peek: ";
                if(top != nullptr){
                    std::cout << top->val << std::endl;
                    return;
                }
                std::cout << std::endl;
            }
            bool isEmpty(){ return s == 0;};
            int size(){ return s; } 

        private:
            int s;  // size of the stack
            Node *top;  // pointer to the top node in the stack
        
        friend std::ostream& operator<<(std::ostream& os, const Stack<T>& s){
            Node *temp = s.top;
            os << "Stack from top to bottom: " << std::endl;
            while(temp != nullptr){
                os << temp->val << std::endl;
                temp = temp->next;
            }
            return os;
        }
    };
}