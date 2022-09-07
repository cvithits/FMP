rm -rf /home/glue_user/aws-glue-libs/jars/AWSGlueJdbcCommons-0.9.0.jar
rm -rf /home/glue_user/aws-glue-libs/jars/postgresql-42.2.8.jar
rm -rf /home/glue_user/spark/jars/postgresql-9.4.1208.jar
rm -rf /home/glue_user/spark/jars/RedshiftJDBC41-1.1.6.1006.jar

wget -q https://jdbc.postgresql.org/download/postgresql-42.2.18.jar -P /home/glue_user/aws-glue-libs/jars/
wget -q https://jdbc.postgresql.org/download/postgresql-42.2.18.jar -P /home/glue_user/spark/jars/