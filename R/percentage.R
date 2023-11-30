#' Calculate the percent in the Likert scale
#'
#' @param data_vector
#'
#'
#' @export
#'
#' @examples
#' likert_data <- c(1, 2, 3, 3, 4, 5, 5, 5)
#' result <- calculate_percentage(likert_data)
#'
calculate_percentage <- function(data) {
  # 计算每个选项的频数
  counts <- table(data)

  # 计算总数
  total <- sum(counts)

  # 计算每个选项的百分比
  percentages <- counts / total * 100

  # 返回结果
  return(percentages)
}





