public class CreateSoql {
	
    public static void createSql(){
        
        list<account> manyrecords=new list<account>();
        
        string namef='Test name';
        string phonef='123456';
        
        for(integer i=0; i<=10; i++){
            account acc=new account();
            acc.name=namef+' '+ i;
            acc.Phone=phonef+i;
           	manyrecords.add(acc);
        }
        
        
       
        
        insert manyrecords;
        system.debug(manyrecords.size() +' data inserted' );
    }
}