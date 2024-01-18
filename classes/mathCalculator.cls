public class mathCalculator {
    private static integer add1(integer a1,integer a2){
        return a1+a2;
    }
    private static integer multiply1(integer a1,integer a2){
        return a1*a2;
    }
    private static void printout(integer a1,integer a2){
        system.debug('Summation Value ' + add1(a1,a2));
        system.debug('Summation Value ' + multiply1(a1,a2));
    }
    public void domath(integer a1,integer a2){
        printout(a1,a2);
    }   
}