#include <iostream>
#include<vector>
using namespace std;

// 测试函数作为参数进行传递

// 直接用函数进行传参
namespace hlx01
{
    typedef int (*ptr) (int ,int);  // 声明一个函数指针类型
    int f(ptr p,int a,int b)
    {
        cout << "p(a,b) is " << p(a,b) << endl;
    }
    int add(int a,int b)
    {
        return a+b;
    }
}

// using templace
namespace hlx02
{
    template<typename InputIterator ,typename Function>
    Function for_each(InputIterator first,InputIterator last, Function f)
    {
        for(; first != last; ++first)
        {
            f(*first);
        }
        return f;
    } 

    void myfunc (int i)
    {
        cout << ' ' << i;
    }

    struct myclass{
        void operator() (int i) 
        {
            cout << ' ' << i;
        }
    }myobj;
}

int main()
{
    // 测试函数作为参数
    // int a = 10, b =1;
    // hlx01::f(hlx01::add,a,b);

    // 测试templace的函数传参
    vector<int> c;
    c.push_back(10);
    c.push_back(20);
    c.push_back(30);

    hlx02::for_each(c.begin(),c.end(),hlx02::myfunc);
    cout << endl;
    hlx02::for_each(c.begin(),c.end(),hlx02::myobj);
    cout << endl;

    return 0;
}