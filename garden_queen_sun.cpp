#include<iostream> 
using namespace std;
int main()
{ 
  cout<<"Shaping the Future"<<endl;
  int num1=1,num2=2;
  for(int i=1;i<=1000;i++){ 
    int temp=num1;
    num1=num2;
    num2=temp+num2;
    cout<<num2;
  } 
  cout<<endl;
  return 0;
}