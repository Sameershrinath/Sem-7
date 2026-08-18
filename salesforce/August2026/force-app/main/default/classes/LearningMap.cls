public class LearningMap {
    public static void mapping(){
        Map<integer,string> studentData= new Map<integer,string>();
        
        		studentData.put(120,'sameer srhianth');
                studentData.put(121,'sameer srhianth2');
                studentData.put(122,'sameer srhianth3');
                studentData.put(123,'sameer srhianth4');
        
        studentdata.put(122,'anchal sonal');
        for(integer sd:studentData.keyset()){
            system.debug('key is :'+ sd + 'value is :' + studentdata.get(sd));

        }
        
        system.debug(studentdata);

    }

}