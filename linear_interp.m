function yn = linear_interp(x1,y1,x2,y2,xn)
yn = y1+(xn-x1)*(y2-y1)/(x2-x1);