/*
g++ -S abc.cpp -o abc.s

c++filt<abc.s>abc_demangle.s

cat abc.s | c++filt > abc_demangle.s
*/
#include <iostream>
using namespace std;

class C0 {
public:
    void c0f1() {cout << "c0 c0f1" << endl;}
    virtual void c0f2() {cout << "c0 c0f2" << endl;}
    int c0a {10};
};

void test1() {
    C0 c0;
    c0.c0f1();
}

int main() {
    test1();
    return 0;
}