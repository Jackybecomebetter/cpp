
#include <iostream>
 
using std::cout;
using std::endl;
 
// 类的操作符重载
namespace test_1
{
    class Demo
    {
    public:
        Demo(int i=0) : a(i)
        {
        }
        // 类成员函数实现运算符重载
        Demo & operator+ (int n)
        {
            this->a += n;
            return *this;
        }
        int getA()
        {
            return a;
        }
    private:
        int a;
    };
};

namespace test_2
{

class Demo
{
public:
    // 友元函数实现运算符重载
    friend Demo & operator+ (Demo & demo, int n);
    Demo(int a)
    {
        this->a = a;
    }
    int getA()
    {
        return a;
    }
private:
    int a;
};
// 重载 "+" 运算符
Demo & operator+ (Demo & demo, int n)
{
    demo.a += n;
    return demo;
}

};
 
int main()
{
    test_1::Demo demo(1);
    // 重载 "+" 运算符后，对象可以直接加一个数
    demo = demo + 2;
    cout << demo.getA() << endl;


    test_2::Demo demo1(3);
    // 重载 "+" 运算符后，对象可以直接加一个数
    demo1 = demo1 + 2;
    cout << demo1.getA() << endl;
    return 0;

    return 0;
}