// move_constructor_demo.cpp
// 编译&执行：g++ -std=c++14 move_constructor_demo.cpp && ./a.out
// 屏蔽rvo的编译&执行：g++ -std=c++14 -fno-elide-constructors move_constructor_demo.cpp && ./a.out

#include <iostream>
#include <vector>
using namespace std;

class A {
private:
    vector<int>* p;
public:
    A() {
        cout << "A 构造函数，无参数" << endl;
        p = new vector<int>();
    }
    // 构造函数
    A(int cnt, int val) {
        cout << "A 构造函数，带参数" << endl;
        p = new vector<int>(cnt, val);
    }
    // 析构函数
    ~A() {
        if (p != nullptr) {
            delete p;
            p = nullptr;
            cout << "A 析构函数，释放 p" << endl;
        } else {
            cout << "A 析构函数，不需要释放 p" << endl;
        }
    }
    // 拷贝构造函数
    A(const A& other) {
        cout << "A 拷贝构造函数" << endl;
        p = new vector<int>(other.p->begin(), other.p->end());
    }
    // 拷贝赋值运算符
    A& operator = (const A& other) {
        cout << "A 拷贝赋值运算符" << endl;
        if (p != nullptr) {
            cout << "A 拷贝赋值前释放旧内存" << endl;
            delete p;
            p = nullptr;
        }
        p = new vector<int>(other.p->begin(), other.p->end());       
        return *this;
    }
    // 移动构造函数
    A(A&& other) noexcept {
        cout << "A 移动构造函数" << endl;
        this->p = other.p;  // 挪用别人的
        other.p = nullptr;  // 置空别人的
    }
    // 移动赋值运算符
    A& operator = (A&& other) noexcept {
        cout << "A 移动赋值运算符" << endl;
        this->p = other.p; 
        other.p = nullptr;  
        return *this;
    }
};

void test_copy_constructor() {
    A a(10, 100);
    A b(a);
}

void test_copy_assign_operator() {
    A a(10, 100);
    A b;
    b = a;
}

A getA(int cnt, int val) {
    return A(cnt, val);
}

void test_move_constructor() {
    A a(getA(10, 200));
}

void test_move_constructor_use_stdmove() {
    A x(10, 200);
    A a(std::move(x));
}

void test_move_assign_operator() {
    A a;
    a = getA(10, 200);
}

int main() {
    cout << "测试拷贝构造: " << endl;
    test_copy_constructor();

    cout << endl << "测试拷贝赋值运算符: " << endl;
    test_copy_assign_operator();

    cout << endl << "测试移动构造: " << endl;
    test_move_constructor();

    cout << endl << "使用 std::move 测试移动构造：" << endl;
    test_move_constructor_use_stdmove();

    cout << endl << "测试移动赋值运算符: " << endl;
    test_move_assign_operator();

    return 0;
}