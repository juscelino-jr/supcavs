plot <-
function(x, ...){
  UseMethod("plot");
}

plot.list <-
function(x, ...){
  par(mfrow=c(1,length(x)), mgp=c(1.2, .4, 0), pin=c(3,2.8), mar=c(2.5,2,1.2,2), cex.main=1.2)
  
  for(obj in x){
    obj_x = c(0,obj$x)
    obj_y = c(obj$y_0,obj$y)
    r = obj$nVars-obj_x
    dh=(max(obj_y)-min(obj_y))/30
    plot.default(r, obj_y, cex=.5, xlab="No. of selected variables", ylab="Performance", main=obj$main)
    text(r, obj_y+dh, labels=obj_x)
  }
}

plot.VarSelPerformance <-
function(x, ...){

  x_x = c(0,x$x)
  x_y = c(x$y_0,x$y)
  r = x$nVars-x_x
  dh=(max(x_y)-min(x_y))/30
  plot.default(r, x_y, cex=.5, xlab="No. of selected variables", ylab="Performance", main=x$main)
  text(r, x_y+dh, labels=x_x)
}

