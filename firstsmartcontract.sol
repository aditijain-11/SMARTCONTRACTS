pragma solidity 0.5.1;

contract Counter{
    uint public count = 1;    //declaring a variable and inline assignment
                       //uint means an unsigned integer it doesnt have a type
                       //ny mentioning public the variable will be shown without get function
    
    event Increment(uint value); //its has logs of all the changes or events
                                //taking place while changing the given parameter
    
    event Decrement(uint value); //event for decrementing the value
    
    //constructor function
    constructor() public{
        count = 0;
    }
    
    
    //first function to incrementing the count
    function increment() public {
        count = count+1;
        emit Increment(count);
    }
    
    
    //second function to incrementing the count
    function decrement() public {
        count-= 1;
        emit Decrement(count);
    }
    
    // to read the count
    function getCount() view public returns(uint){
        return count;
     }
}