package bigdata;


import java.io.IOException;

import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;

public class FlightMapper extends Mapper<LongWritable, Text, Text, Text>{

	@Override
	public void map(LongWritable key, Text value, Context context)
			throws IOException,InterruptedException {
		final DoubleWritable one = new DoubleWritable(1);
		// TODO Auto-generated method stub
		String[] tokens = value.toString().split(",");

		String carrier = tokens[3].trim();
		carrier = carrier.substring(1, carrier.length() - 1);
		String flightNumber = tokens[4].trim();
		flightNumber = flightNumber.substring(1, flightNumber.length() - 1);// delete the ""
																			
//		 System.out.println("******Carrier is****" + carrier);
		// System.out.println("******Number is****" + flightNumber);

		String delay = tokens[19].trim();
		String depDelayTime = tokens[17].trim();
		String arrDelayTime = tokens[27].trim();
		String airTime = tokens[36].trim();

		StringBuilder sb = new StringBuilder();
		sb.append("1"+","+delay+","+depDelayTime+","+arrDelayTime+","+airTime);
//		System.out.println("******value****" + sb.toString());

		if (!carrier.equals("CARRIER") && !delay.equals("")) {// when delay is empty, dump all the data

			context.write(new Text(carrier + "-" + flightNumber), new Text(sb.toString()));
		}
	}

}
