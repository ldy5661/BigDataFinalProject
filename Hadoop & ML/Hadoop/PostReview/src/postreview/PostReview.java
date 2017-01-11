/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package postreview;

import java.io.IOException;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.mapreduce.TableMapReduceUtil;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;

/**
 *
 * @author zxy
 */
public class PostReview {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException,InterruptedException,ClassNotFoundException{
        // TODO code application logic here
        Configuration conf = HBaseConfiguration.create();
        Job job = Job.getInstance(conf,"postReview");
        job.setJarByClass(PostReview.class);
        job.setMapperClass(reviewMapper.class);
        job.setReducerClass(reviewReducer.class);
        
        job.setMapOutputKeyClass(Text.class);
        job.setMapOutputValueClass(Text.class);
        
//        job.setOutputKeyClass(Text.class);
//        job.setOutputValueClass(Text.class);
        
        FileInputFormat.addInputPath(job, new Path(args[0]));
        // TABLE NAME: PostReview  COLOUM FAMILY:review
        TableMapReduceUtil.initTableReducerJob("PostReview", reviewReducer.class, job);
        
        System.exit(job.waitForCompletion(true)? 0 : 1);
    }
    
    
}
