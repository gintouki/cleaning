merge_sets <- function() {
  train_data <- file.path(getwd(), "UCI HAR Dataset", "train", "X_train.txt")
  train_labels <- file.path(getwd(), "UCI HAR Dataset", "train", "y_train.txt")
  train_subj <- file.path(getwd(), "UCI HAR Dataset", "train", "subject_train.txt")
  test_data <- file.path(getwd(), "UCI HAR Dataset", "test", "X_test.txt")
  test_labels <- file.path(getwd(), "UCI HAR Dataset", "test", "y_test.txt")
  test_subj <- file.path(getwd(), "UCI HAR Dataset", "test", "subject_test.txt")
  activ_labels <- file.path(getwd(), "UCI HAR Dataset", "activity_labels.txt")
  features_labels <- file.path(getwd(), "UCI HAR Dataset", "features.txt")
  
  if (file.exists(activ_labels))
    labels <- read.table(activ_labels)
  if (file.exists(features_labels)) {
    features <- read.table(features_labels)
    features <- as.character(features[,2])
  }

  if (file.exists(train_data)) {
    train_t <- read.table(train_data)
    if (file.exists(train_labels)) {
      train_l <- read.table(train_labels)
      train_l <- as.vector(sapply(train_l, function (x) {return(labels[x,2])}))
    }
    if (file.exists(train_subj))
      train_s <- as.vector(read.table(train_subj))
    
    train_t <- cbind(train_s, train_l, train_t)
    names(train_t) <- c("Subject", "Activity", features)
  }
  
  if (file.exists(test_data)) {
    test_t <- read.table(test_data)
    if (file.exists(test_labels)) {
      test_l <- read.table(test_labels)
      test_l <- as.vector(sapply(test_l, function (x) {return(labels[x,2])}))
    }
    if (file.exists(test_subj))
      test_s <- as.vector(read.table(test_subj))
    
    test_t <- cbind(test_s, test_l, test_t)
    names(test_t) <- c("Subject", "Activity", features)
  }
  
  return(rbind(train_t, test_t))
}

xtr_mean_std <- function(data_set) {
  return(data_set[,c(1, 2, grep("mean|std", names(data_set)))])
}

run_avrg <- function(data_set) {
  library(dplyr)
  return(
    data_set %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))
  )
}

assignment <- function() {
  data_set <- merge_sets()
  data_set <- xtr_mean_std(data_set)
  data_set <- run_avrg(data_set)
  write.table(data_set, file = "tidy_set.txt", row.name = FALSE)
}