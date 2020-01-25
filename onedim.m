function onedim()
test = xlsread('courses_use.xlsx');
disp(test);
% HIGH HAPPY HIGH EFFECT
x=test(1:20,2); % Esther bad
y = zeros(1, 20);
hold on;
scatter(x,y,80,'fill', 'blue');
axis([0 5 -0.1 0.1]);
scatter(2.80, 0, 150, 'fill', 'cyan')
hold on;
scatter(3.15,0,150,'fill', 'magenta')
legend( 'Average of Instructor Effectiveness for one CRN on Esther', 'CRN A', 'CRN B')
xlabel( 'Instructor Overall Effectiveness as Rated by Students on Esther')
end

