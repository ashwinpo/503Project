# 503Project

Resources to get started

1. [Creating nice visualization for text classification inference](https://www.r-bloggers.com/2018/12/text-classification-with-tidy-data-principles/)
2. [Modeling using workflow in R](https://cfss.uchicago.edu/notes/supervised-text-classification/)
3. [RandomForest example - you can basically skip to the RandomForest step](https://www.pluralsight.com/guides/machine-learning-text-data-using-r)



# Results
We can start putting results from various methods in a table here:

| **Vectorization** | **Classification Model** | **Train Size** | **Training Accuracy** | **Test Accuracy** | **Fake Test Accuracy** | **True Test Accuracy** |
|-------------------|--------------------------|----------------|-----------------------|-------------------|------------------------|------------------------|
|   TD-IDF          |   SVM                    |  3370          |   .9994               |     0.9395        |      0.9316            |     0.9481             |
|   TD-IDF          |   RandomForest           |                |                       |                   |                        |                        |
|   TD-IDF          |   Logistic Regression    |                |                       |                   |                        |                        |
|   ...             |                          |                |                       |                   |                        |                        |
|   BERT            |    NN                    |                |                       |                   |                        |                        |
