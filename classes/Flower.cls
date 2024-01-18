public class Flower {
    public static integer wilt(integer numberofpetals){
        if(numberofpetals >=1) {
            numberofpetals--;
        }
       return numberofpetals;
    }
public static void grow(integer height, integer maxheight)
		{
    		height=height + 2;
                if (height >= maxheight){
                    pollinate();
                }
		}
 public static void pollinate()
		{
     			system.debug('Pollinating');
 		}
}