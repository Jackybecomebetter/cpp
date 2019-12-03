#include <iostream>

using std::cout;
using std::endl;

// 类模板
template <typename T>
class complex
{
public:
    // 这里冒号后面是对re和im进行初始化的意思
    complex(T r=0 , T i = 0) : re(r) , im(i)
    {
    }
    complex & operator += (const complex &);
    T real() const
    {
        return re;
    }
    T imag() const
    {
        return im;
    }

private:
    T re , im;
    friend complex & _doapl(complex * , const complex &);
};

// 函数模板
class stone
{
public:
    stone(int w,int h,int we) : _w(w),_h(h),_weight(we)
    {}

    // 重新写类的小于号操作符
    bool operator< (const stone& rhs) const
    {
        return _weight < rhs._weight;
    }

    int get_weight()
    {
        return _weight;
    }
private:
    int _w,_h,_weight;
};

template <class T> 
inline const T& min(const T&a, const T& b)
{
    return b < a ? b : a;
}

int main()
{
    complex<double> c1(2.5,6.5);
    cout << "real:" << c1.real() << "\timag:" << c1.imag() << endl;
    complex<int> c2(2,6);
    cout << "real:" << c2.real() << "\timag:" << c2.imag() << endl;

    stone a1(1,2,3);
    stone a2(2,3,1);
    stone a3 = min(a1,a2);
    cout << "min stone of a and b is " << a3.get_weight() << endl;
}