classdef Student
    properties 
        ID
        Name
        Age
        GPA
        Major
    end

    methods
        % constructor method to intialize a Student object
        function obj = Student(id, name, age, gpa, major)
            obj.ID = id;
            obj.Name = name;
            obj.Age = age;
            obj.GPA = gpa;
            obj.Major = major;
        end
        % Method to display student information
        function displayInfo(obj)
            fprintf('ID: %d\nName: %s\nAge: %d\nGPA: %.2f\nMajor: %s\n', obj.ID, obj.Name, obj.Age, obj.GPA, obj.Major);
        end

        % Method to update the GPA of a student
        function obj = updateGPA(obj, newGPA)
            obj.GPA = newGPA;
        end
    end
end



