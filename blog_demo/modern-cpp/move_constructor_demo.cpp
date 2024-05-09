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
    cout << endl << "测试拷贝构造: " << endl;
    A a(10, 100);
    A b(a); // 触发拷贝构造
}

void test_copy_assign_operator() {
    cout << endl << "测试拷贝赋值运算符: " << endl;
    A a(10, 100);
    A b;
    b = a; // 触发拷贝赋值
}

A getA(int cnt, int val) {
    return A(cnt, val);
}

void test_move_constructor() {
    cout << endl << "测试移动构造: " << endl;
    A a(getA(10, 200)); // 触发移动构造？
}

void test_move_assign_operator() {
    cout << endl << "测试移动赋值运算符: " << endl;
    A a;
    a = getA(10, 200); // 触发移动赋值
}

int main() {
    test_copy_constructor();
    test_copy_assign_operator();
    test_move_constructor();
    test_move_assign_operator();

    return 0;
}