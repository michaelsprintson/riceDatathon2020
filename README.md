# riceDatathon2020 - Course Evaluation

Inside the mind of a student: in-depth course evaluation modeling and analytics

## Participants

* Seung Hun Jang (sj43)
* Colin King (cbk1)
* Andrew Feng (asf6)
* Timothy Goh (tmg5)
* Michael Sprintson (ms148)

## Data Sourced

## Test Data

* course / instructor evalution historical dataset from Rice University Office of Registrar

## Training Data

* Coursera course reviews dataset from Kaggle

## Files Explained

* filtercsv.ipynb
    - input: the overall data set, creates a visualization of  the  distribution of commments in CRNs and filters the data to only include CRNs with a large quantity of reviews (at least 60) and exports that to csv
    
* filtercsv_copy.ipynb
    - takes in coursera dataset reviews.csv file, categorizes it, cuts abnormally short comments
    
* keyWords.numbers 
    - a file containing the keywords used to train the model for both perceived happiness and perceived instructor effectiveness
    
* perceivedhelpfulness.ipynb
    - input: a csv file with the happiness and instructor performance data as part of input data frame
    - creates a function that takes in a single CRN and outputs the top 5 sorted most helpful reviews for that particular CRN
    
* viz.ipynb
    - input: a csv file with the happiness and instructor performance data as part of input data frame
    - output: a plot with x axis as classified happiness and y axis as classified instructor effectiveness
    - also has capability to output that data for use in Matlab 3D plotting file ????
    
* modeling.ipynb
    - input: curated dataset from filtered_csv file and trains the model on Kaggle data to predict happiness and instructor effectiveness, using both unigram and bigram multivariate-naive-Bayesean model.
    - output: the input csv with added columns for the rediction of happiness and instructor effectiveness as well as the keywords that the model used to predict them
    - contains tools to clean filter and lemmatize the data
    
* wordflow.ipynb
    - input: a csv file with the happiness and instructor performance data as part of input data frame
    - output: a python dictionary that maps course keyword to perceived happiness, normalized from 0 to 1
    - also includes easy visualization of the output data


## Prerequisites:

Listed in "requirements.txt"


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
