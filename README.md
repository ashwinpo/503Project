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
|   TD-IDF          |   RandomForest           |  3370          |  0.9409               |     0.9425        |      0.9574            |     0.9288              |
|   TD-IDF          |   Logistic Regression    |  33691          |  0.9488               |     0.9435        |      0.9293            |     0.9572             |
|   ...             |   Naive Bayes            |  3370          |  0.8822               |     0.877         |      0.9188            |     0.8388             |
|   BERT            |    NN                    |                |                       |                   |                        |                        |
