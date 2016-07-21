#/bin/bash

SPARK_HOME=~/spark-1.6.2-bin-hadoop2.7.1-dynamic
SPARK_SUBMIT=$SPARK_HOME/bin/spark-submit
ENV="--master yarn --deploy-mode client --executor-memory 4g --executor-cores 2 --queue default"
JAR="$SPARK_HOME/lib/spark-examples*.jar"
HBASE_CONF_DIR=~/hbase-1.1.2/conf

START="============================================================================="
MID="-------------------------------------------------------------------------------"
END="=============================================================================="

# 1. HBaseTest
APP="1. HBaseTest"
CLASS=org.apache.spark.examples.HBaseTest
CMD="$SPARK_SUBMIT --class $CLASS $ENV $JAR scores"
echo -e "$START \n $APP \n $CMD \n $MID"
$CMD
read -p "Press any key to continue." var
