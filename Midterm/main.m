% Main script to demonsrtate the funcionality
db = StudentDatabase(); % Create a new StudentDatabase object

% Adding sample students 
db = db.addStudent(Student(1, 'donald', 18, 3.2, 'Chemistry'));
db = db.addStudent(Student(2, 'rocco', 21, 3.5, 'Physics'));
db = db.addStudent(Student(3, 'sam', 19, 3.9, 'Engineering'));

% Performing searches 
student = db.findStudentByID(1); %find student by ID
if ~isempty(student)
    student.displayInfo(); %display student information
end

studentsCH = db.getStudentsByMajor('chemistry'); % Get student by major
for i = 1:length(studenntsCH)
    studentsCH(i).displayInfo(); %display info for each student
end
% generating visualizations
visualizeData(db); %Call the function to visualize data

% saving and loading database
db.saveToFile('StudenDatabase.mat'); %save data base to file
db = db.loadFromFile('StudentDatabase.mat'); % load the database from a file
