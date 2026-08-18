public class Rectange {
    //variable
    Integer length =10, breadth=20;
    
    
    //Methods
    public void area(){
        Integer a;
        a=length*breadth;
        System.debug('Area : ' + a);
    }
    
    public void perimeter(){
        Integer p;
        p=2*( length + breadth);
        System.debug('Perimeter :'+p);
    }
    
}