@isTest
private class TempratureConverter_Test {
    @isTest static void myTest(){
        decimal firstcomp = TempratureConverter.gettemp(70);
        system.assertEquals(21,firstcomp);
    }

}