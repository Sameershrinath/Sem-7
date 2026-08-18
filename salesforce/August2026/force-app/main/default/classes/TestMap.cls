public class TestMap {
    
    public static Void Maptest(){
        
        Map<Map<String,Integer>,String> myMap= new Map<Map<String,Integer>,String>();
        
        Map<String,Integer> innerMap=new Map<String,Integer>();
        innerMap.put('Student',5);
        
        myMap.put(innerMap,'Btech');
        system.debug(myMap);
    }

}