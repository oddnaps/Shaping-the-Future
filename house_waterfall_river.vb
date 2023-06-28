'Module1

Sub Main()
	Dim intAge  As Integer
	Dim strName As String
	Dim strCourse As String
	
	' Input student details
	Print "Enter student age: "
	Input intAge
	Print "Enter student name: "
	Input strName
	Print "Enter course: "
	Input strCourse
	
	' Calculate the time needed to complete course
	
	Dim intCourseHours As Integer
	intCourseHours = CalcCourseHours(intAge, strCourse)
	
	' Output course details 
	
	Print "Student name: " & strName
	Print "Course hours needed: " & intCourseHours 
	
	' Calculate student's future
	
	CalcFuture(intCourseHours, strName)
	
	End Sub
	
	Function CalcCourseHours(ByVal intAge As Integer, ByVal strCourse As String) As Integer
	
	Dim intCourseHours As Integer 
	
	'Check the type of course
	Select Case strCourse 
		Case "Arts"
			intCourseHours = 10 * intAge
		Case "Science"
			intCourseHours = 8 * intAge
		Case "Commerce"
			intCourseHours = 6 * intAge
		Case Else
			intCourseHours = 0
	End Select
	
	CalcCourseHours = intCourseHours
	
	End Function
	
	Sub CalcFuture(ByVal intCourseHours As Integer, ByVal strName As String)
	
	Dim strFuture As String
	
	If intCourseHours > 0 Then 
		'Check if the student has enough time to complete the course
		If intCourseHours <= 2000 Then
			strFuture = "The student " & strName & " has enough time to complete the course"
		Else
			strFuture = "The student " & strName & " doesn't have enough time to complete the course"
		End If
	Else
		strFuture = "The student " & strName & " doesn't have a valid course"
	End If
	
	Print strFuture
	
	End Sub

End Module