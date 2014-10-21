#Create a class and inherit from ActiveRecord::Migration

# By convention, the class name should match the part of the
# file name after the number, so in this case:
# 001_create_costume_stores.rb becomes class CreateCostumeStores

# Define a change method in which to do the migration
# In this change method, create columns with the correct names and 
# value types according to the spec