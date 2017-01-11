/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package postreview;

import java.io.IOException;
import org.apache.hadoop.hbase.client.Put;
import org.apache.hadoop.hbase.io.ImmutableBytesWritable;
import org.apache.hadoop.hbase.mapreduce.TableReducer;
import org.apache.hadoop.hbase.util.Bytes;
import org.apache.hadoop.io.Text;

/**
 *
 * @author zxy
 */
public class reviewReducer extends TableReducer<Text, Text, ImmutableBytesWritable>{
    
   
    
    public void reduce(Text key,Iterable<Text>values,Context context)throws IOException,InterruptedException{
        
       
        int sumOr = 0;
        int sumScr = 0;
        int sumCsr = 0;
        int sumFbr = 0;
        int sumIer = 0;
        int sumGsr = 0;
        int sumWcr = 0;
        int sumVmr = 0;
        int sumR = 0;
        int cunt =0;
        
//         System.out.println(sumCsr+sumFbr+sumGsr+sumIer+sumOr+sumR+sumScr+sumVmr+sumWcr);
        
        for(Text value : values){
            String[] str = value.toString().split(",");
            sumOr +=Integer.parseInt(str[0]);
            sumScr +=Integer.parseInt(str[1]);
            sumCsr +=Integer.parseInt(str[2]);
            sumFbr +=Integer.parseInt(str[3]);
            sumIer +=Integer.parseInt(str[4]);
            sumGsr +=Integer.parseInt(str[5]);
            sumWcr +=Integer.parseInt(str[6]);
            sumVmr +=Integer.parseInt(str[7]);
            sumR +=Integer.parseInt(str[8]);
            cunt +=Integer.parseInt(str[9]);
        }
        int resultOr =sumOr/cunt; 
        int resultScr =sumScr/cunt;
        int resultCsr =sumCsr/cunt;
        int resultFbr =sumFbr/cunt;
        int resultIer =sumIer/cunt;
        int resultGsr =sumGsr/cunt;
        int resultWcr =sumWcr/cunt;
        int resultVmr =sumVmr/cunt;
        int resultR =sumR/cunt;
        
//        System.out.println(resultOr+","+resultScr+","+resultCsr+","+resultFbr+","+resultIer+","+resultGsr+","+resultWcr+","+
//        resultVmr+","+resultR);
        
//        context.write(key, new Text(resultOr+","+resultScr+","+resultCsr+","+resultFbr+","+resultIer+","+resultGsr+","+resultWcr+","+
//        resultVmr+","+resultR));
        Put put = new Put(Bytes.toBytes(key.toString()));
        put.add(Bytes.toBytes("review"), Bytes.toBytes("overall_rating"), Bytes.toBytes(String.valueOf(resultOr)));
        put.add(Bytes.toBytes("review"), Bytes.toBytes("comfort_rating"), Bytes.toBytes(String.valueOf(resultScr)));
        put.add(Bytes.toBytes("review"), Bytes.toBytes("food_rating"), Bytes.toBytes(String.valueOf(resultFbr)));
        put.add(Bytes.toBytes("review"), Bytes.toBytes("entertainment_rating"), Bytes.toBytes(String.valueOf(resultIer)));
        
        
        context.write(null, put);
    }
  
    
}
