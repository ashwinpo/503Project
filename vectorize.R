library(tidyverse)
library(superml)

fake = read.csv("Fake.csv", encoding = "UTF-8")
true = read.csv("True.csv", encoding = "UTF-8")

fake$label = rep("Fake", nrow(fake))
true$label = rep("True", nrow(true))
data = rbind(true, fake)

## set the seed to make your partition reproducible
set.seed(503)
train_ind <- sample(seq_len(nrow(data)), size = floor(0.75 * nrow(data)))

train <- data[train_ind, ]
test <- data[-train_ind, ]


# initialise the class
tfv <- TfIdfVectorizer$new(min_df = 0.1, max_df = 0.9, max_features = 800,
                           remove_stopwords = TRUE)

# we fit on train data
tfv$fit(train$text)

train_tf_features <- tfv$transform(train$text)
test_tf_features <- tfv$transform(test$text)


train_out = train %>% select(-text) %>% cbind(.,train_tf_features)
test_out = test %>% select(-text) %>% cbind(.,test_tf_features)

write.csv(train_out,"train.csv", row.names = FALSE)
write.csv(test_out,"test.csv", row.names = FALSE)