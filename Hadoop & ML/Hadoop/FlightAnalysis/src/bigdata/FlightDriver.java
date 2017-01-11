package bigdata;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.mapreduce.TableMapReduceUtil;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;


public class FlightDriver {

	public static void main(String[] args) throws Exception {
		Configuration conf = HBaseConfiguration.create();
		Job job = Job.getInstance(conf, "Flight");
		job.setJarByClass(FlightDriver.class);

		job.setMapperClass(FlightMapper.class);
		job.setReducerClass(FlightReducer.class);
		job.setMapOutputKeyClass(Text.class);
		job.setMapOutputValueClass(Text.class);


		FileInputFormat.addInputPath(job, new Path(args[0]));


		TableMapReduceUtil.initTableReducerJob("FlightAnalysis", FlightReducer.class, job);

		System.exit(job.waitForCompletion(true) ? 0 : 1);
	}

}
