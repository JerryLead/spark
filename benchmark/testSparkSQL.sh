#/bin/bash

SPARK_HOME=~/spark-1.6.2-bin-hadoop2.7.1-dynamic
SPARK_SUBMIT=$SPARK_HOME/bin/spark-submit
ENV="--master yarn --deploy-mode client --executor-memory 4g --executor-cores 2 --queue default"
JAR="$SPARK_HOME/lib/spark-examples*.jar"

START="============================================================================="
MID="-------------------------------------------------------------------------------"
END="=============================================================================="

# 1. RDDRelationTest
APP="1. RDDRelationTest"
CLASS=org.apache.spark.examples.sql.RDDRelation
CMD="$SPARK_SUBMIT --class $CLASS $ENV $JAR"
echo -e "$START \n $APP \n $CMD \n $MID"
$CMD
read -p "Press any key to continue." var

# 2. HiveFromSpark
APP="2. HiveFromSpark"
CLASS=org.apache.spark.examples.sql.hive.HiveFromSpark
CMD="$SPARK_SUBMIT --class $CLASS $ENV $JAR"
echo -e "$START \n $APP \n $CMD \n $MID"
$CMD
read -p "Press any key to continue." var
