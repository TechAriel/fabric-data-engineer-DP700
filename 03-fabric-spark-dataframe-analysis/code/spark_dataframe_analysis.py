#!/usr/bin/env python
# coding: utf-8

# ## spark_hse_notebk1
# 
# null

# # Sales Order Data Exploration
# 
# Use this notebook to explore sales order data
# 

# In[2]:


from pyspark.sql.types import *

orderSchema = StructType([
    StructField("SalesOrderNumber", StringType()),
    StructField("SalesOrderLineNumber", IntegerType()),
    StructField("OrderDate", DateType()),
    StructField("CustomerName", StringType()),
    StructField("Email", StringType()),
    StructField("Item", StringType()),
    StructField("Quantity", IntegerType()),
    StructField("UnitPrice", FloatType()),
    StructField("Tax", FloatType()) 
])

df = spark.read.format("csv").schema(orderSchema).load("Files/orders/*.csv")
# df now is a Spark DataFrame containing CSV data from "Files/orders/*.csv".
display(df)


# In[16]:


customers = df["CustomerName", "Email"]

print(customers.count())
print(customers.distinct().count())

display(customers.distinct())


# In[19]:


customers = df.select("CustomerName", "Email")

display(customers.limit(100))


# In[22]:


customers = df.select("CustomerName", "Email").where(df["Item"] == "Road-250 Red, 52")

print(customers.count())
print(customers.distinct().count())

display(customers.distinct())


# In[26]:


productSales = df.select("Item", "Quantity").groupBy("Item").sum()

display(productSales)


# In[27]:


from pyspark.sql.functions import *

yearlySales = df.select(year(col("OrderDate")).alias("Year")).groupBy("Year").count().orderBy("Year")

display(yearlySales)


# In[34]:


# Create Year and Month columns
transformed_df = df.withColumn("Year", year(col("OrderDate"))).withColumn("Month", month(col("OrderDate")))

# Create FirstName and LastName fields
transformed_df = transformed_df.withColumn("FirstName", split(col("CustomerName"), " ").getItem(0)).withColumn("LastName", split(col("CustomerName"), " ").getItem(1))

# Filter and reorder columns
transformed_df = transformed_df["SalesOrderNumber", "SalesOrderLineNumber", "OrderDate", "Year", "Month", "FirstName", "LastName", "Email", "Item", "Quantity", "UnitPrice", "Tax"]

# Display the first five orders
display(transformed_df.limit(5))


# In[35]:


transformed_df.write.mode("overwrite").parquet("Files/transformed_data/orders")

print("Transformed data saved!")


# In[36]:


orders_df = spark.read.format("parquet").load("Files/transformed_data/orders")

display(orders_df)


# In[37]:


orders_df.write.partitionBy("Year", "Month").mode("overwrite").parquet("Files/partitioned_data")

print("Transformed Data Saved!")


# In[40]:


orders_2021_df = spark.read.format("parquet").load("Files/partitioned_data/Year=2021/Month=*")

display(orders_2021_df)


# In[6]:


# Create a new table
df.write.format("delta").saveAsTable("salesorders")

# Get the table description
spark.sql("DESCRIBE EXTENDED salesorders").show(truncate=False)


# In[7]:


df = spark.sql("SELECT * FROM spark_house.salesorders LIMIT 1000")

display(df)


# In[8]:


# The command is not a standard IPython magic command. It is designed for use within Fabric notebooks only.
# %%sql

# SELECT year(OrderDate) as OrderYear,
#         sum((UnitPrice * Quantity) + Tax) as GrossRevenue
# FROM salesorders
# GROUP BY OrderYear
# ORDER BY OrderYear;


# In[9]:


# The command is not a standard IPython magic command. It is designed for use within Fabric notebooks only.
# %%sql

# SELECT *
# FROM salesorders


# In[13]:


sqlQuery = "SELECT Cast(year(OrderDate) as Char(4)) as OrderYear, \
            sum((UnitPrice * Quantity) + Tax) as GrossRevenue, \
            Count(Distinct SalesOrderNumber) as YearlyCounts \
            FROM salesorders \
            GROUP BY OrderYear \
            ORDER BY OrderYear"

df_spark = spark.sql(sqlQuery)

df_spark.show()


# In[26]:


import matplotlib.pyplot as plt



# matplotlib requires a Pandas DataFrame, not a Spark one
df_sales = df_spark.toPandas()

# clear the plot area
plt.clf()

# Create a figure for 2 subplots (1 row, 2 columns)
fig, ax = plt.subplots(1, 2, figsize = (10,4))

# Create a bar plot of revenue by year on the first axis
ax[0].bar(x=df_sales['OrderYear'], height=df_sales['GrossRevenue'], color='orange')
ax[0].set_title('Revenue by Year')

# Create a pie chart of yearly order counts on the second axis
ax[1].pie(df_sales['YearlyCounts'])
ax[1].set_title('Orders per Year')
ax[1].legend(df_sales['OrderYear'])

# Add a title to the Figure
fig.suptitle('Sales Data')

# Show the figure
plt.show()




# In[30]:


import seaborn as sns

# clear the plot area
plt.clf()

# Create a line chart
ax = sns.lineplot(x="OrderYear", y="GrossRevenue", data=df_sales)

plt.show()

