function  g = sign(c)
pos = find(c>=0); 
neg = find(c<0);
c(pos) = 1;
c(neg) = -1;
g=c;
end
