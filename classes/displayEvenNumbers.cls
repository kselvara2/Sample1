public class displayEvenNumbers {
    public static void displayNumbers(){
       list<integer> listofNumbers = new list<integer>();
       integer count=0;
       integer count1=0;
        while(count<10){
            listofNumbers.add(count);
            if(math.mod(count,2)==0)
            {
                count1=count1+count;
            }
            count++;
        }
        system.debug('List of Numbers ' + listofNumbers);
        system.debug('Total ' + count1);
    }
}