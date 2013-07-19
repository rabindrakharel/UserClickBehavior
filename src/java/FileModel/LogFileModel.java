/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package FileModel;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

/**
 *
 * @author RdwSuppot
 */
public class LogFileModel {
    public LogFileModel()
    {

    }
    
    public ArrayList<ArrayList<String>> ReadLogFile(String Path) throws FileNotFoundException, IOException
    {
        
     // Open the file
            
ArrayList<ArrayList<String>> LogFile=new ArrayList<ArrayList<String>>(); 
File file=new File(Path);
System.out.println(file.getName());
FileInputStream fstream = new FileInputStream(Path);
DataInputStream in = new DataInputStream(fstream);
BufferedReader br = new BufferedReader(new InputStreamReader(in));
   ArrayList<String> LogFileSmall=new ArrayList<String>();
   String[] param=file.getName().split(",");
   LogFileSmall.add(0,param[0]);
   LogFileSmall.add(1,param[1]);
   LogFile.add(LogFileSmall);
   System.out.println(LogFile);
   String strLine;
while ((strLine = br.readLine()) != null)   {
   strLine=strLine.replaceAll("]","").replaceAll("'","").replaceAll("\\[","").replaceAll("\\[","").replaceAll(" ","").replaceAll("datetime.datetime\\(","").replaceAll("\\)","");
   String[] str=strLine.split(",");
   LogFileSmall=new ArrayList<String>();
   if(str.length>2)
   {
    LogFileSmall.add(0,str[2]);
    LogFileSmall.add(1,str[5]+str[6]+str[7]+str[8]+str[9]+str[10]);
   }
   else
   { 
       LogFileSmall.add(0,"Session");
   }
   System.out.println(LogFileSmall);
}
in.close(); 
    return LogFile;    
    }
    
    public static void main(String args[]) throws FileNotFoundException, IOException
    {
    LogFileModel lfm=new LogFileModel();
    lfm.ReadLogFile("C:\\My Drive\\Current Projects\\User Click Behavior\\micro_data\\abi-abinaya,202557898.log");
    
    }
}
