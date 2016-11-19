#hdfs dfs -cat /data/assignments/ex2/part3/webLarge.txt| ./mapper.py
hdfs dfs -rm -r /user/$USER/assignment2/task5

hadoop jar /opt/hadoop/hadoop-2.7.3/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar \
-D mapred.reduce.tasks=1 \
-input /data/assignments/ex2/part3/webLarge.txt/ \
-output /user/$USER/assignment2/task5 \
-mapper mapper.py \
-file mapper.py \
-reducer reducer.py \
-file reducer.py \

hdfs dfs -cat /user/$USER/assignment2/task5/* > output.out
