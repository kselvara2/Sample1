public class ApexClass_Wrapper {
    
    public favHerClass objFavHer{get;set;}  //initialize object
    public list<favHerClass> lstWrap {get;set;} //Create List
    
    
    public ApexClass_Wrapper(){   // Constructor
        
        lstWrap = new List<favHerClass>();
        
        objFavHer = new favHerClass();  //create object
        objFavHer.sName = 'Sofia';
        objFavHer.intAge = 40;
        objFavHer.isMarried = true;
        objFavHer.decHeight = 5.3;
        lstWrap.add(objFavHer);
        
        favHerClass objFavHer1 = new favHerClass();
        objFavHer1.sName = 'Abhi';
        objFavHer1.intAge = 13;
        objFavHer1.isMarried = False;
        objFavHer1.decHeight = 5.7;
        lstWrap.add(objFavHer1);
    }
    
    
    //Wrapper Class
    Public class favHerClass{
        public string sName{get;set;}
        public integer intAge{get;set;}
        public Boolean isMarried{get;set;}
        public Decimal decHeight{get;set;}       
    }
}