function [ root2, ea2 ] = False( xl, xu )
x2=0;
f=@(x)x^3-1;
ea=inf;
root2=(inf);
ea2=(inf);
if f(xl)*f(xu)>0
    fprintf('Wrong Choice');
else
    for i=1:10
        if(i~=1)
            x2=root;
        end
    root=xu-((f(xu))*(xl-xu))/((f(xl)-f(xu)));
    ea=abs((root-x2)/root)*100;
    
    if f(xl)*f(root)<0
        xu=root;
    else
        xl=root;
    end
    root2(i)=root;
    ea2(i)=ea;
    end
end
end


