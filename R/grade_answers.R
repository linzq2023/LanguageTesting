#
#' Dichotomize student's response
#' @param df input the students' response
#' @param correct_answers
#'
#' @return df dichotomized responses
#' @export
#'
#' @examples
#' library(readxl)
#' students_df <- read_excel("students.xlsx")
#' correct_answers <- c("A", "B", "C", "D")
#' graded_df <- grade_answers(students_df, correct_answers)
#' data<-data.frame(graded_df)
#' data
#'
grade_answers <- function(df, correct_answers) {
  # 遍历每个答案列
  for (i in 1:length(correct_answers)) {
    question_column <- paste("item", i, sep = "")
    # 检查该列是否存在于数据框中
    if (!question_column %in% names(df)) {
      stop(paste("can not find：", question_column))
    }
    # 根据正确答案进行评分
    df[[question_column]] <- ifelse(df[[question_column]] == correct_answers[i], 1, 0)
  }
  return(df)
}














