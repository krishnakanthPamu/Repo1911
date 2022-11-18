/* Access Specifiers: PUBLIC
 * Without STATIC Keyword:
 * Note: Access Specifiers : PUBLIC	 
*/

/*public class CalculatorAPEXClass {
    //Variable declaration at class level
    private integer Sum;
    private integer Multiplication;

    //function for sum
    public integer MakeSum(integer NumA, integer NumB) {
        integer Sum =NumA + NumB;
        return Sum;
    }
    
	//function for Multiplication
    public void MakeMultiply(integer NumC, integer NumD) {
        integer Mul = NumC * NumD;
        system.debug('Multiplication: '+ Mul);
    }
*/

/*   CalculatorAPEXClass Calcobj = new CalculatorAPEXClass ( );
 *   Integer Sum = Calcobj.MakeSum(10,20);
 *	 system.debug('Sum: ' + Sum);
 *	 Calcobj.MakeMultiply(10,20);
 * THIS PROCEDURE WE RARELY USE IN REAL-TIME PROJECTS.
*/
    
/*	With STATIC Keyword by which no object creation required
 *  If 'STATIC' is used for Functions then 'STATIC' should be used for variables.
*/



public class CalculatorAPEXClass {
    
    //Variable declaration at class level

    private static  integer Sum;
    private static  integer Multiplication;
    //function for sum
    public static integer MakeSum(integer NumA, integer NumB) {
        
        integer Sum =NumA + NumB;
        return Sum;
    }
    
	//function for Multiplication
    public static void MakeMultiply(integer NumC, integer NumD) {
        
        integer Mul = NumC * NumD;
        system.debug('Multiplication: '+ Mul);
    }    
}

/*
 * 	Integer a = CalculatorAPEXClass.MakeSum(10,20);
 *	system.debug('Sum: ' + a);
 *	CalculatorAPEXClass.MakeMultiply(10,20);    
*/