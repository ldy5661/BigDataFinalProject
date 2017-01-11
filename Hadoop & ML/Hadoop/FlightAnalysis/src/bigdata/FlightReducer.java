package bigdata;

import java.io.IOException;
import java.util.Iterator;

import org.apache.hadoop.hbase.client.Put;
import org.apache.hadoop.hbase.io.ImmutableBytesWritable;
import org.apache.hadoop.hbase.mapreduce.TableReducer;
import org.apache.hadoop.hbase.util.Bytes;
import org.apache.hadoop.io.Text;



public class FlightReducer extends TableReducer<Text, Text, ImmutableBytesWritable> {


	
        @Override
	public void reduce(Text key, Iterable<Text> values, Context context) throws IOException, InterruptedException {
		// TODO Auto-generated method stub
		int total = 0;
		double delay = 0;
		double depDelayTime = 0;
		double arrDelayTime = 0;
		double airTime = 0;
		
		for(Text textss: values){
			String value = textss.toString();
			String[] data = value.split(",");
//			System.out.println(data[0]+" "+data[1]+" "+data[2]+" "+data[3]+" "+ data[4]);
//			System.out.println("*******key"+key+"length"+data.length);
			if(data.length >= 5){
				total = total + Integer.parseInt(data[0]);
				delay = delay + Double.parseDouble(data[1]);
				depDelayTime = depDelayTime + Double.parseDouble(data[2]);
				arrDelayTime = arrDelayTime + Double.parseDouble(data[3]);
				airTime = airTime + Double.parseDouble(data[4]);
			}
			
		}
		
		double delayRatio = delay/total;
		double totalDelayTime = depDelayTime + arrDelayTime;
		double aveDelayTime = totalDelayTime/total;
		double aveAirTime = airTime/total;
		
		StringBuilder sb = new StringBuilder();
		sb.append(String.format("%.2f", delayRatio) + " " + (int)aveDelayTime + " " + (int)aveAirTime);
//		output.collect(key, new Text(sb.toString()));
		

		Put put = new Put(Bytes.toBytes(key.toString()));
		put.add(Bytes.toBytes("value"), Bytes.toBytes("delayRate"), Bytes.toBytes(String.format("%.2f", delayRatio)));
		put.add(Bytes.toBytes("value"), Bytes.toBytes("delayTime"), Bytes.toBytes(String.valueOf(aveDelayTime)));
		put.add(Bytes.toBytes("value"), Bytes.toBytes("aveAirTime"), Bytes.toBytes(String.valueOf(aveAirTime)));
		context.write(null, put);
	}

}
