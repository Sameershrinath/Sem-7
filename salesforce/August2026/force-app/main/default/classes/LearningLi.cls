public class LearningLi {
    
    public static void li(){
        List<String> fruits = new List<string>();
        fruits.add('apple');
        fruits.add('banana');
        fruits.add('grapes');
        fruits.remove(2);
        
        for(string f:fruits){
            system.debug(f);
            
        }
        
        system.debug(fruits.isempty());
        system.debug(fruits.get(1));
        //system.debug(fruits.get(5)); will give error like out of bound 
        fruits.set(1,'pomegranate');
        
        for(string s:fruits){
            system.debug(s);
        }
        
        List<string> vegetables= new List<string>{'onion','potato','tomato'};
            
            for(string veg:vegetables){
                system.debug(veg);
            }
        
        list<string> edable= new list<string>();
        edable.addall(fruits);
        edable.addall(vegetables);
        edable.sort();
        for(string eda:edable){
            system.debug(eda);
        }
    }

}