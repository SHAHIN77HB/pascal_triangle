function pascal_triangle_function(n)
%% CALCULATING AND PLOTTING PASCAL TRIANGLE 
k=n-1;
num=1;
A=[];
for i=1:n
    for j=1:k
        fprintf('\t')
    end
    for j=1:i
        fprintf('\t')
        fprintf('%d',num(j));
        fprintf('\t')
    end
    k=k-1;
    fprintf('\n')
    zeroapp=[0,0];
    newvect=[zeroapp(1),num,zeroapp(end)];
    clear num
    if i==1
        A(i,:)=[A,newvect];
    else
        [m,~]=size(A);
    A=[A zeros(m,1);newvect];
    end
    for i=1:length(newvect)-1
        num(i)=newvect(i)+newvect(i+1);
    end
   
end
%%
for i=1:n
    s=-(i-1);
    r=-(i-1):2:(i-1);
    for j=1:length(r)
        plot(r(j),s,'w')
        hold on
        text(r(j),s,num2str(A(i,j+1)),'color','k')
    end
end
axis([r(1)-2 r(end)+2 r(1)-2 2])