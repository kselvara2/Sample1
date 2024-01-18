public class TempratureConverter {
    public static integer gettemp(integer tempval){
        integer convertedvalue=(tempval-32)*5/9;
        system.debug('Converted value'+convertedvalue);
        return convertedvalue;   
    }
}