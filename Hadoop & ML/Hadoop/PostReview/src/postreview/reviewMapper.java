/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package postreview;
import java.io.IOException;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;


/**
 *
 * @author zxy
 */
public class reviewMapper extends Mapper<Object, Text , Text ,Text>{
 
     public void map(Object key ,Text value ,Context context)throws IOException,InterruptedException{
        
        String line = value.toString();
        String[] array = line.split(",");
//        System.out.println("***********************"+array.length);
//        String[] array = new String[10];
//        for(int i=0; i<array1.length;i++){
//            array[i] = array1[i];
//            array[9] = "1000";
//        }
//        int or = 0,scr=0,csr=0,fbr=0,ier=0,gsr=0,wcr=0,vmr=0,r=0;
            
        if(!array[0].equals("airline_name") ){
            String name = array[0];
            int or = Integer.valueOf(array[1].trim());
            int scr = Integer.valueOf(array[2].trim());
            int csr = Integer.valueOf(array[3].trim());
            int fbr = Integer.valueOf(array[4].trim());
            int ier = Integer.valueOf(array[5].trim());
            int gsr = Integer.valueOf(array[6].trim() );
            int wcr = Integer.valueOf(array[7].trim() );
            int vmr = Integer.valueOf(array[8].trim() );
            int r = Integer.valueOf(array[9].trim() );
           
            
            
            context.write(new Text(name),new Text(or+","+ scr+ "," +csr+","+fbr+","+ier+","+gsr+","+wcr+","+vmr+","+r +",1"));
           // System.out.println("name : " + or);
//            System.out.println(or+","+ scr+ "," +csr+","+fbr+","+ier+","+gsr+","+wcr+","+vmr+","+r +",1");
        }
        
        
        
        
        
    }
    
    
}
