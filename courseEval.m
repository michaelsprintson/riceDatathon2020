function courseEval()
coder.extrinsic('rand')
test = xlsread('datathon.xlsx');
disp(test);
% HIGH HAPPY HIGH EFFECT
x=test(1:5,2); % Esther bad
y=test(1:5,3); % Happiness bad
z=test(1:5,4); % Effectiveness bad
scatter3(x,y,z, 'filled', 'blue'); 
hold on;
count = test(1:5,5)';
for i = 1:5
    for j = 1:count(i)
            nx =x + 0.8*(rand(5,1)-0.9);
            ny = y + 0.8*(rand(5,1)-0.9);
            nz = z + 0.8*(rand(5,1)-0.9);
            hold on;
            scatter3(nx , ny, nz,'filled', 'blue')
    end
end

% LOW HAPPY HIGH EFFECT
x2=test(6:10,2); % Esther bad
y2=test(6:10,3); % Happiness bad
z2=test(6:10,4); % Effectiveness bad
scatter3(x2,y2,z2, 'filled', 'red');
count = test(6:10,5)';
for i = 1:5
    for j = 1:count(i)
            nx =x2 + 0.5*(rand(5,1)-0.5);
            ny = y2 + 0.5*(rand(5,1)-0.5);
            nz = z2 + 0.5*(rand(5,1)-0.8);
            hold on;
            scatter3(nx , ny, nz,'filled', 'red')
    end
end

hold on;

% LOW HAPPY LOW EFFECT
x3=test(11:15,2); % Esther bad
y3=test(11:15,3); % Happiness bad
z3=test(11:15,4); % Effectiveness bad
scatter3(x3,y3,z3, 'filled', 'black');
hold on;
count = test(11:15,5)';
for i = 1:5
    for j = 1:count(i)
            nx =x3 + (rand(5,1)-0.5);
            ny = y3 + (rand(5,1)-0.5);
            nz = z3 + (rand(5,1)-0.5);
            hold on;
            scatter3(nx , ny, nz,'filled', 'black')
    end
end

% HIGH HAPPY LOW EFFECT
x4=test(16:20,2); % Esther bad
y4=test(16:20,3); % Happiness bad
z4=test(16:20,4); % Effectiveness bad
scatter3(x4,y4,z4, 'filled', 'green');
hold on;
count = test(16:20,5)';
for i = 1:5
    for j = 1:count(i)
            nx =x4 + 0.5*(rand(5,1)-0.5);
            ny = y4 + 0.5*(rand(5,1)-0.8);
            nz = z4 + 0.5*(rand(5,1)-0.5);
            hold on;
            scatter3(nx , ny, nz,'filled', 'green')
    end
end
hold on;
scatter3(2.8,1.63,4.94, 150, 'filled', 'cyan');
hold on;
scatter3(3.15, 4.95, 1.87, 150, 'filled', 'magenta');
axis([0 5 0 5 0 5]);
xlabel('Esther''s "Teacher Effectiveness" Rating');
ylabel('Our Algorithm''s "Student Happiness" Rating During Course');
zlabel('Our Algorithm''s "Amount Learned" Rating')
title('Esther Effectiveness Ratings against Happiness Metrics and Amount Learned Metrics for Individual Comments')
%legend( 'High Happiness, High Amt Learned', 'Low Happiness, High Amt Learned', 'Low Happiness, High Amt Learned', 'High Happiness, Low Amt Learned', 'CRN A', 'CRN B');
end



