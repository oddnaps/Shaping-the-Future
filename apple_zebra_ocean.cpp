#include <iostream>
#include <string>
#include <cstdio>
#include <fstream>
 
using namespace std;
 
int main(){
 
    // Setting the stage
    string quote = "Shaping the Future";
    cout << quote << endl;
 
    // Create a file stream
    ofstream outFile;
    outFile.open("ShapingTheFuture.cpp");
 
    // Output stream
    outFile << "#include <stdio.h>" << endl;
    outFile << "#include <iostream>" << endl;
    outFile << "#include <string>" << endl;
    outFile << "#include <cmath>" <<endl;
    outFile << "#include <cstdlib>" <<endl;
 
    outFile << endl;
    outFile << "using namespace std;" << endl;
 
    outFile << endl;
 
    outFile << "int main(){" << endl;
    outFile << "    cout << \"Shaping the future is the goal we must strive to achieve.\" << endl;" << endl;
    outFile << "    cout << \"We must use the knowledge and resources we have to create a better future.\" << endl;" << endl;
    outFile << "    cout << \"It begins with us, and the tools in our hands.\" << endl;" << endl;
    outFile << "    cout << \"Working together, we can shape the world into a better one.\" << endl;" << endl;
    outFile << "    cout << \"The future is ours to make our own.\" << endl;" << endl;
    outFile << "    return 0;" << endl;
    outFile << "}" << endl;
 
    outFile.close();
 
    return 0;
}