# GovTech DSAID Data Engineer Technical Test

# Section 1

## Delete any rows which do not have a name
 <p>
Rows that without a name is remove using Pandas dropna function.
</p>

## Split name field into first_name and last_name

<p>
This is done using a python package available online. Required to download the nameparser package using pip install. The package consist of dictionaries of the keywords need to ignore which make the spliting task easy. Initial the HumanName function in the package to extract the relevant fields.
</p>

## Remove any prepended zeros

<p>
The data is saved as a float. Hence, it most likely will not have any prepended zero. However, for safety, a regex is used to remove any prepended zero.
</p>

## Create new field named above_100, which is true if the price is strictly greater than 100

<p>
This is done by filtering the price using the condition price > 100.
</p>

# Section 2

## The database is designed with 4 table as seen in the ER diagram below

![alt text](https://github.com/bokneo/GovTech_DSAID/blob/master/Section_2/ER%20Diagram.png?raw=true)

# Section 3

## The system architecture diagram:

![alt text](https://github.com/bokneo/GovTech_DSAID/blob/master/Section_3/System%20Design.png?raw=true)

# Section 4

## The graph displaying the number of cases in Singapore over time using the given APIs

![alt text](https://github.com/bokneo/GovTech_DSAID/blob/master/Section_4/graph_num_case_over_time.png?raw=true)

# Section 5

## Features Selected

<p>
The features that are selected in the end are: 'maint', 'lug_boot', 'safety', 'class_value'
</p>

## Comparing performance between algorithms

<p>
Model accuracy score with decision-trees : 0.2364
Model accuracy score with extra-trees : 0.2364
Model accuracy score with random forest : 0.2364
Model accuracy score with gradient boosting trees : 0.2820
Model accuracy score with logistic regression : 0.2872
</p>

## Performance with Neural Networks

<p>
Model: 
_________________________________________________________________
Layer (type)                 Output Shape              Param #   
=================================================================
dense_40 (Dense)             (None, 3)                 15        
_________________________________________________________________
dense_41 (Dense)             (None, 3)                 12        
_________________________________________________________________
dense_42 (Dense)             (None, 3)                 12        
_________________________________________________________________
dense_43 (Dense)             (None, 4)                 16        
=================================================================
Total params: 55
Trainable params: 55
Non-trainable params: 0
_________________________________________________________________
test accuracy = 0.3169877408056042
</p>