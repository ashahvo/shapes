classdef triangles 
    properties
        side1 {mustBeNumeric, mustBeScalarOrEmpty}
        side2 {mustBeNumeric, mustBeScalarOrEmpty}
        base {mustBeNumeric, mustBeScalarOrEmpty}
        degree {mustBeNumeric, mustBeScalarOrEmpty}
        height {mustBeNumeric, mustBeScalarOrEmpty}
        
    end 

    methods
        function obj = triangles(side1, base, degree)
            obj.side1 = side1;
            obj.base = base;
            obj.degree = degree;
            obj.height = obj.side1 * sind(obj.degree);
            obj.side2 = sqrt((obj.base^2 + obj.side1^2 - 2 * obj.side1 * obj.base * cosd(obj.degree)));
        end
        
        function a = area(obj)
            a = 0.5 * [obj.base] .* [obj.height];
        end

        function p = perimeter(obj)
            p = [obj.base] + [obj.side1] + [obj.side2]; 
        end 
    end  
end 