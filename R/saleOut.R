#' 1.同步历史客户
#'
#' @param dmsToken 
#' @param erpToken 
#' @param customerName 
#' @param debug 
#'
#' @return 返回值
#' @export
#'
#' @examples customer_sync_byName('CA64752E-79BB-4C59-8D7B-6C5849FC43F8','81F7F79A-7D3D-4114-A012-62888F8A6113','rdsTest2')
customer_sync_byName <- function(dmsToken,erpToken,customerName) {
  #注册python模板
  mdl <- tsda::import('mdlOkkiCrmMdpy.main')
  #调用python函数，将.替代为$
  res <- mdl$customer_sync_byName(dmsToken=dmsToken,erpToken=erpToken,customerName=customerName)
  #返回结果
  return(res)
}