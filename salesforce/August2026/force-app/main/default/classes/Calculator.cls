public class Calculator {
    
    static Integer num1=20,num2=10;
    
        @invocableMethod(label='calculator')
    public static void addition(){
        Integer s;
        s=100;
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