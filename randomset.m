function  rset = randomset()
m = 1000; 

rset = ones(m,4); 

A=randi (10, 1, 1) -randi (10, 1, 1);
B=randi (10, 1, 1) -randi (10, 1, 1);
C=1; %randi (10, 1, 1) -randi (10, 1, 1);

rset(:,2) =  rset(:,2) + randi (100, m, 1) -randi (100, m, 1);
rset(:,3) = rset(:,3) + randi (100, m, 1)-randi (100, m, 1);


%ax1+by1+c=0 random another
while( find( A.*rset(:,2) + B.*rset(:,3) + 1 ==0))
	rset(:,2) =  rset(:,2) + randi (100, m, 1) -randi (100, m, 1);
	rset(:,3) = rset(:,3) + randi (100, m, 1)-randi (100, m, 1);
endwhile


%ax1+by1+c > 0  then the point is above the line. -1
temp = find( A.*rset(:,2) + B.*rset(:,3) + 1 >0);


rset(temp,4) = -1;


end