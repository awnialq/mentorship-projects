#pragma once

#include <ostream>
namespace mentor{

    template<typename T> class Stack{
        class Node{
            Node(const T& value){
                val = value;
                next = nullptr;
            }

            protected:
                T val;
                Node *next;
        };

        Stack(){
            s = 0;
            top = nullptr;
        }

        public:
            void push(T val);
            T pop();
            T peek();
            bool isEmpty();
            int size(){ return s; } 

        private:
            int s;  // size of the stack
            Node *top;  // pointer to the top node in the stack
        
        friend std::ostream& operator<<(std::ostream& os, const Stack<T>& s){
            Node *temp = s.top;
            os << "Stack from top to bottom: " << std::endl;
            while(temp != nullptr){
                os << temp->val << std::endl;
            }
        }
    };

}