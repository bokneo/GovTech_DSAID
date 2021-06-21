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