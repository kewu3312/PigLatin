public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{ for (int i =0; i< sWord.length(); i++)
	{
    String let = sWord.substring(i, i+1);
    if (let.equals("a") || let.equals("e") || let.equals("i") || let.equals("o") || let.equals("u"))
    {
    
      return i;
    }
  	}
  	return -1; 
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else
	{	String firstVow = sWord.substring(0,1);
		if (firstVow.equals("a") || firstVow.equals("e") || firstVow.equals("i") || firstVow.equals("o") || firstVow.equals("u")){
			return sWord + "way";
		}
		String firstTwo = sWord.substring(0,2);
		if (firstTwo.equals("qu")){
			return sWord.substring(2,sWord.length()) + "quay";
		}



		int pos = findFirstVowel(sWord);
		return sWord.substring(pos) + sWord.substring(0,pos) + "ay";
		
	}
}