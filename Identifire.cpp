#include<bits/stdc++.h>
using namespace std;
int i = 0,f=0;
void state1(string s)
{
    if(i>=s.size())  return;
    else if(s[i] >= 'A' and s[i] <= 'Z'){
        i++;
        f=1;
        state1(s);
    }
    else if(s[i] >= 'a' and s[i] <= 'z'){
        i++;
        f=1;
        state1(s);
    }
     else if(s[i]-'0' >= 0 and s[i]-'0' <= 9){
        i++;
        f=1;
        state1(s);
    }
    else if(s[i] == '_'){
        i++;

        state1(s);
    }
}
void state0(string s)
{
    if(i>=s.size())  return;
    else if(s[i] >= 'A' and s[i] <= 'Z'){
        i++;
        f=1;
        state1(s);
    }
    else if(s[i] >= 'a' and s[i] <= 'z'){
        f=1;
        i++;
        state1(s);
    }
    else if(s[i] == '_'){
        i++;
        state1(s);
    }
}
int main()
{
    string s;
    cin >> s;
    state0(s);
    if(i == s.size() and f==1)  cout << "Valid" << endl;
    else  cout << "Invalid !" << endl;
}
