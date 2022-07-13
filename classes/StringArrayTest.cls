public class StringArrayTest {
    public static list<string> generateStringArray(Integer intNumber){
        list<string> lstString = new list<string>();
        for(Integer i = 0; i < intNumber; i++){
            lstString.add('Test ' + i);
        }
        return lstString;
    }
}