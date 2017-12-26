function [root1,ea1] = Bisection( xl, xu)
x2=0;
f=@(x)x^3-1;
ea=inf;
root=inf;
root1=(inf);
ea1=(inf);
if (f(xl)*f(xu)>0)
    fprintf('Wrong Choice');
else
    for i=1:10
        if(i~=1)
            x2=root;
        end
    root=(xl+xu)/2;
    ea=abs((root-x2)/root)*100;
    
    if f(xl)*f(root)<0
        xu=root;
    else
        xl=root;
    end
    root1(i)=root;
    ea1(i)=ea;
    end
end
end

