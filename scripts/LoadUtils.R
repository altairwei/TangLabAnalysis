local({
  # Use this file as: source("../scripts/LoadUtils.R", chdir = TRUE)
  
  if ("wta:utils" %in% search()) {
    warning("Environment `wta:utils` already attached and it will be refreshed",
            call. = FALSE)
    utils_env <- .WtaUtilsEnv
    detach("wta:utils")
  } else {
    utils_env <- new.env()
    assign(".WtaUtilsEnv", utils_env, envir = utils_env)
  }
  
  # Scripts must be placed within the same directory as LoadUtils.R
  #source("Constants.R", local = utils_env)
  source("Visualization.R", local = utils_env)
  
  args <- list(what = utils_env, name = "wta:utils")
  do.call(base::attach, args)
})
