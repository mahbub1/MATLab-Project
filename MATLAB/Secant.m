function [root4, ea4 ] = Secant( x0,x1 )
f=@(x)x^3-1;
ea=inf;
root4=(inf);
ea4=(inf);
    for i=1:10
        root=x1-((f(x1))*(x1-x0))/(f(x1)-f(x0));
        ea=abs((root-x1)/root)*100;
        x0=x1;
        x1=root;
    root4(i)=root;
    ea4(i)=ea;
    end

end