public class CalculatorCons {
    Integer num1,num2;
    
    //constructor
    public CalculatorCons(integer n1,integer n2){
        num1=n1;
        num2=n2;
    }
    
    public void addition(){
        Integer s;
        s= num1+num2;
        System.debug('Sum :'+s);
    }
        public void Substraction(){
        Integer sub;
        sub= num1-num2;
        System.debug('Substraction :'+sub);
    }
    public void Division(){
        Integer d;
        d= num1/num2;
        System.debug('Division :'+d);
    }
        public void Multiplication(){
        Integer s;
        s= num1*num2;
        System.debug('Multiplication :'+s);
    }





}