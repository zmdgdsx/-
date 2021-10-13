pragma solidity ^0.7.0;
contract StorageExample3 {
    //string a  = "abc";
    //string b  = "fdsabfaskjdfkasnfknkneflnasknfkjanslknfklasdnfklndsalfnernofnaosnfladsnjfiohafbldkasfbdasjkfbljkabfuiebwfkasf--------------------------------------------------------------------------------------------------------------------------------------";
                   //fdsabfaskjdfkasnfknkneflnasknfkj
    string[] public feng; 
    function ddd(string memory x) public { 
        feng.push(x); 
        
    } 
}


