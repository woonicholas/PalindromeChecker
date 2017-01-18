public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(reverse(isLetters(noSpaces(noCapitals(word)))).equals(isLetters(noSpaces(noCapitals(word)))))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();  
    int last = str.length()-1;
    for (int i = last;i>=0;i--)
    {
      sNew = sNew + str.substring(i,i+1);
    }
    return sNew;
}

public String noSpaces(String sWord){
  String str = new String();
  for(int i =0;i<sWord.length();i++)
  {
    if(sWord.substring(i,i+1).equals(" ")==false)
    str = str + sWord.substring(i,i+1);
  }
  return str;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String isLetters(String sString){
  String word2 = new String();
  for(int i =0;i<sString.length();i++)
  {
  if(Character.isLetter(sString.charAt(i)) == true)
  word2 = word2 + sString.substring(i,i+1);
  }
  return word2;
}

