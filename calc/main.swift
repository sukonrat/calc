//
//  main.swift
//  calc
//
//  Created by Jesse Clark on 12/3/18.
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation



var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program

print(Int(args[0])!)


func checkOperation(_ opr: String) -> Bool{
    if ( (opr == "-") || (opr == "+") || (opr == "*") || (opr == "/"))
    {
        return true
    }
    else {
        return false
    }
}

func calculateOperation(_ equa: String) {
    // 4 - 7
    var array1: [String] = []; // * - + /
    var array2: [String] = []; // 12345
    
    for ch in equa
    {
        if (checkOperation(String (ch)) == true)
        {
            // operation
            array1.append(String(ch));
        }
        else {
            // numbers
            array2.append(String(ch));

        }
    }
    
    var result = 0
    // logic
    switch array1[0] {
    case "+":
        result = Int(array2[0])! + Int(array2[1])!
    case "-":
        result = Int(array2[0])! - Int(array2[1])!

    default:
        print("please provide valid input ")
    }
    
    
    print(result);
    
    
}


var equation1 = readLine();

print (calculateOperation(equation1!) );

/*
class Calculator: calculator {
    
    var numberOnScreen:Int = 0;
    var previousNumber:Int = 0;
    var operation = 0;
    
    
    
}*/
// this is test 
