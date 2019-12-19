C++作为一种面向对象的经典语言，它是非常的强大，它的每个部分都值得我们去深入了解。

const的基本概念：

     const名叫常量限定符，用来限定特定变量，以通知编译器该变量是不可修改的。习惯性的使用const，可以避免在函数中对某些不应修改的变量造成可能的改动。

下面我就const的用法来谈谈：

const的用法大致可分为以下几个方面：

(1)const修饰基本数据类型

(2)const应用到函数中

(3)const在类中的用法

(4)const修饰类对象，定义常量对象 

一、const修饰基本数据类型 

     1.const修饰一般常量及数组  
    
          const int a=10;               等价的书写方式：     int const a=10;
          const int arr[3]={1,2,3};                        int const arr[3]={1,2,3};
     对于类似这些基本数据类型，修饰符const可以用在类型说明符前，也可以用在类型说明符后，其结果是一样的。在使用这些常量的时候，只要不改变这些常量的值便好。  
    
     2.const修饰指针变量*及引用变量&         
    
          介绍本部分内容之前，先说说指针和引用的一些基本知识。
    
          指针(pointer)是用来指向实际内存地址的变量，一般来说，指针是整型，而且一般的大家会接受十六进制的输出格式。
          引用(reference)是其相应变量的别名，用于向函数提供直接访问参数（而不是参数的副本）的途径，与指针相比，引用是一种受限制的指针类型，或者说是指针的一个子集，而从其功能上来看，似乎可以说引用是指针功能的一种高层实现。

关于运算符&和*：
           在C++里，沿袭C中的语法，有两个一元运算符用于指针操作：&和*。按照本来的定义，&应当是取址符，*是指针符，也就是说， &用于返回变量的实际地址，*用于返回地址所指向的变量，他们应当互为逆运算。实际的情况也是如此。

         在定义变量的引用的时候，&只是个定义引用的标志，不代表取地址。

举例：  

复制代码
 1 #include<iostream.h>
 2 void main()
 3 {
 4     int a;  //a is an integer
 5     int *aPtr;  //aPtr is a pointer to an integer
 6 
 7     a=7;
 8     aPtr = &a;
 9     cout<<"Showing that * and & are inverses of "<<"each other.\n";
10     cout<<"a="<<a<<"  *aPtr="<<*aPtr<<"\n";
11     cout<<"&*aPtr = "<<&*aPtr<<endl;
12     cout<<"*&aPtr = "<<*&aPtr <<endl;
13 }
复制代码
 运行结果： 

​        

         了解完指针和应用的基本概念之后，下面继续我们的话题。

const修饰指针（*）：

const int* a = & [1]          //非常量数据的常量指针    指针常量
int const *a = & [2]          //非常量数据的常量指针     a is a pointer to the constant char variable
int* const a = & [3]          //常量数据的非常量指针指针常量 常量指针 a is a constant pointer to the (non-constant) char variable
const int* const a = & [4]    //常量数据的常量指针
可以参考《Effective c++》Item21上的做法，

如果const位于星号*的左侧，则const就是用来修饰指针所指向的变量，即指针指向为常量；

如果const位于星号的右侧，const就是修饰指针本身，即指针本身是常量。

因此，[1]和[2]的情况相同，都是指针所指向的内容为常量，这种情况下不允许对内容进行更改操作，如不能*a = 3 ；

[3]为指针本身是常量，而指针所指向的内容不是常量，这种情况下不能对指针本身进行更改操作，如a++是错误的；

[4]为指针本身和指向的内容均为常量。   

const修饰引用（&）：

   int const &a=x;
   const int &a=x;
   int &const a=x;//这种方式定义是C、C++编译器未定义，虽然不会报错，但是该句效果和int &a一样。   
          这两种定义方式是等价的，此时的引用a不能被更新。如：a++ 这是错误的。   
 二、const应用到函数中  

      1.作为参数的const修饰符
    
      2.作为函数返回值的const修饰符  
    
      其实，不论是参数还是返回值，道理都是一样的，参数传入时候和函数返回的时候，初始化const变量
      1      修饰参数的const，如 void fun0(const A* a ); void fun1(const A& a);
      调用函数的时候，用相应的变量初始化const常量，则在函数体中，按照const所修饰的部分进行常量化，如形参为const A* a，
    
      则不能对传递进来的指针的内容     进行改变，保护了原指针所指向的内容；如形参为const A& a，则不能对传递进来的引用对象进行改变，
    
      保护了原对象的属性。
     [注意]：参数const通常用于参数为指针或引用的情况; 
     2      修饰返回值的const，如const A fun2( ); const A* fun3( );
         这样声明了返回值后，const按照"修饰原则"进行修饰，起到相应的保护作用。

const Rational operator*(const Rational& lhs, const Rational& rhs)
{
return Rational(lhs.numerator() * rhs.numerator(),
lhs.denominator() * rhs.denominator());
}
     返回值用const修饰可以防止允许这样的操作发生:

Rational a,b;
Radional c;
(a*b) = c;

一般用const修饰返回值为对象本身（非引用和指针）的情况多用于二目操作符重载函数并产生新对象的时候。

类中的成员函数：A fun4()const; 其意义上是不能修改所在类的的任何变量。 

  三、类中定义常量（const的特殊用法） 

 

 在类中实现常量的定义大致有这么几种方式实现： 

1.使用枚举类型 

class test
{
     enum { SIZE1 = 10, SIZE2 = 20}; // 枚举常量
     int array1[SIZE1];  
     int array2[SIZE2];
};
2.使用const 

     不能在类声明中初始化const数据成员。以下用法是错误的，因为类的对象未被创建时，编译器不知道SIZE的值是什么。 

  class test
  {
        const int SIZE = 100;     // 错误，企图在类声明中初始化const数据成员
        int array[SIZE];          // 错误，未知的SIZE
  };
     正确的使用const实现方法为：const数据成员的初始化只能在类构造函数的初始化表中进行。 

复制代码
 class A
 {…
        A(int size);      // 构造函数
        const int SIZE ; 
 };
 A::A(int size) : SIZE(size)    // 构造函数的初始化表
{
      …
}
//error 赋值的方式是不行的
A::A(int size)
{
     SIZE=size;
}
void main（）
{
    A  a(100); // 对象 a 的SIZE值为100
    A  b(200); // 对象 b 的SIZE值为200
}
复制代码
       注意：对const成员变量的初始化，不能在变量声明的地方，必须在类的构造函数的初始化列表中完成，即使是在构造函数内部赋值也是不行的。

      具体原因请参见 【初始化列表和赋值的区别】 

3.使用static const 

通过结合静态变量来实现：

复制代码
#include<iostream.h> 
class Year
{ 
private:
 int y; 
public:
 static int const Inity;
public: 
 Year()
 {
  y=Inity;
 }
 };
int const Year::Inity=1997;//静态变量的赋值方法,注意必须放在类外定义
void main()
{
 cout<<Year.Inity<<endl;//注意调用方式，这里是用类名调用的。
}
复制代码
 到这里就把在类中定义常量的方法都陈列出来了。 

四、const定义常量对象，以及常量对象的用法 

 class test
{
public:
    test():x(1)
    {
        y=2;
    }
    ~test()
    {}
    void set(int yy)
    {
        y=yy;
    }
    int getx() const
    {
        return x;
    }
//protected:
    const int x;
    int y;
};
void main()
{
 const test t;
 t.set(33);//error
 t.getx();
}

常量对象只能调用常量函数，别的成员函数都不能调用。 

五、使用const的一些建议
   <1>要大胆的使用const，这将给你带来无尽的益处，但前提是你必须搞清楚原委；
   <2> 要避免最一般的赋值操作错误，如将const变量赋值，具体可见思考题；
   <3> 在参数中使用const应该使用引用或指针，而不是一般的对象实例，原因同上；
   <4> const在成员函数中的三种用法（参数、返回值、函数）要很好的使用；
   <5>不要轻易的将函数的返回值类型定为const;
   <6>除了重载操作符外一般不要将返回值类型定为对某个对象的const引用; 

