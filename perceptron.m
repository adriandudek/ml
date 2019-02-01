clear ; close all; clc

%% Load Data
%data = load('data2.txt');
data  = randomset;
X = data(:,[1,2,3]);  %with bias
y = data(:,4);  %output

figure; hold on;


% show all point 
pos = find(y==1); neg = find(y == -1);
% Plot Examples
plot(X(pos, 2), X(pos, 3), 'k+','LineWidth', 2, ...
'MarkerSize', 7);
plot(X(neg, 2), X(neg, 3), 'ko', 'MarkerFaceColor', 'y', ...
'MarkerSize', 7);


X=X';
[m ,n] = size(X);
W = ones (1,m); %initialize 
W = W';

while size(temp = find((y'-sign( W'*X))!=0))>0
	for i=temp
		W  = W' + X'(i,:)*y(i)'; 
		W=W';
	endfor
endwhile

%C = W'*X
%A = sign(C)
a=-W(2)/W(3)
b=-W(1)/W(3)

fplot(@(x)a*x+b, [-100 100]);
  
hold off;