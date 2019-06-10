hipercube_points = [0 0 0 0;
0 0 0 1
0 0 1 0 
0 0 1 1
0 1 1 1
0 1 0 1
0 1 0 0 
0 1 1 0
0 1 0 0 
0 0 0 0
1 0 0 0
1 0 0 1
1 0 1 1
1 0 1 0 
1 0 0 0 
1 1 0 0 
1 1 0 1
1 1 1 1
1 1 1 0
0 0 0 0
]
%plot(hipercube_points'(:,1), hipercube_points'(:,2))
plot([0, 1, 0, 1], [0, 0, 1, 1], [0, 1, 1, 0])
xlabel('y')
ylabel('x')
title("Hipercube")
axis equal