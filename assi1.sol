pragma solidity 0.5.1;

contract Counter{
    
    uint public qty;
    uint public oneunitprice = 100;
    uint public finalcost;
    uint public ordercompletestatus = 0;
    uint public paymentstatus = 0;
    
    

    
    function buy(uint q) public{
        
        qty = q;
        finalcost = fetchprice(oneunitprice, qty);
        
        if (q*oneunitprice == finalcost){
            paymentstatus = 1;
        }
        
        
        
        
        
    }
    
    
    function fetchprice(uint p, uint qty) public returns(uint) {
        
        ordercompletestatus = 1;
        
        return p*qty;
        
    }
    

    

}