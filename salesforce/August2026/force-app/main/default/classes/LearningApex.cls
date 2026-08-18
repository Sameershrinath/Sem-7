public class LearningApex {
    
    public static void ifElse(integer a){
        if(a>5){
            System.debug('A is greater');
        }
        else{
            System.debug('A is smaller');
        }
    }
    public static void elseIfladder(integer a){
        if(a==10){
            System.debug('A is equal to 10');
        }
        else if(a<10){
            System.debug('A is smaller than 10');
        }
        else{
            system.debug('A is greater than 10');
        }
    }
    public static void Operators(){
        Boolean a=True;
        Boolean b= True;
        
        System.debug(a&&b);
        System.debug(a||b);
        System.debug(!a);
    }
    public static void TerniaryOperator(integer a){
        system.debug(a>10?'A isgreater than 10':'A is smaller than 10');
    }
    public static void forLoop(){
        for(integer a=1;a<10;a++){
            System.debug(a);
        }
    }
}