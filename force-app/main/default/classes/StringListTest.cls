public class StringListTest {
public static List<String> generateStringList (Integer n)
{   List<String> output=new List<String>();
    for(Integer i=0;i<n;i++)
    {
        output.add('Test '+i);
        
    }
 return output;
}
}