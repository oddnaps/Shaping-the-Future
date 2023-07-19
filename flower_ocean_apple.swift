//1
import UIKit

//2
class ShapeTheFutureViewController: UIViewController {
    
    //3
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!
    
    //4
    override func viewDidLoad() {
        super.viewDidLoad()
        txtTitle.text = "Shaping the Future"
        btnSubmit.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)
    }
    
    //5
    @objc func submitTapped() {
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Shaping the Future"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        vc.view.addSubview(label)
        
        //6
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: vc.view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: vc.view.centerXAnchor),
        ])
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    //7
    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    //8
    func checkForPermissions() {
        if !isPermissionGranted() {
            requestPermission()
        }
    }
    
    //9
    func isPermissionGranted() -> Bool {
        return false
    }
    
    //10
    func requestPermission() {
        // request permission code goes here
    }
    
    //11
    func createTopic(name: String) {
        // create topic code goes here
    }
    
    //12
    func deleteTopic(name: String) {
        // delete topic code goes here
    }
    
    //13
    func editTopic(name: String, newName: String) {
        // edit topic code goes here
    }
    
    //14
    func getTopics() {
        // get topics code goes here
    }
    
    //15
    func addUserToTopic(userId: String, topicName: String) {
        // add user to topic code goes here
    }
    
    //16
    func removeUserFromTopic(userId: String, topicName: String) {
        // remove user from topic code goes here
    }
    
    //17
    func getMessagesForTopic(topicName: String) {
        // get messages for topic code goes here
    }
    
    //18
    func createMessage(message: String, topic: String, user: String) {
        // create message code goes here
    }
    
    //19
    func deleteMessage(messageId: Int) {
        // delete message code goes here
    }
    
    //20
    func editMessage(messageId: Int, newMessage: String) {
        // edit message code goes here
    }
    
    //21
    func sendMessage(message: String) {
        // send message code goes here
    }
    
    //22
    func likeMessage(messageId: Int) {
        // like message code goes here
    }
    
    //23
    func unlikeMessage(messageId: Int) {
        // unlike message code goes here
    }
    
    //24
    func getLikesForMessage(messageId: Int) {
        // get likes for message code goes here
    }
    
    //25
    func createActivity(activity: String, user: String, dueDate: Date) {
        // create activity code goes here
    }
    
    //26
    func deleteActivity(activityId: Int) {
        // delete activity code goes here
    }
    
    //27
    func editActivity(activityId: Int, newActivity: String) {
        // edit activity code goes here
    }
    
    //28
    func getActivitiesForUser(userId: String) {
        // get activities for user code goes here
    }
    
    //29
    func getUserCountForActivity(activityId: Int) {
        // get user count for activity code goes here
    }
    
    //30
    func addUserToActivity(userId: String, activityId: Int) {
        // add user to activity code goes here
    }
    
    //31
    func removeUserFromActivity(userId: String, activityId: Int) {
        // remove user from activity code goes here
    }
    
    //32
    func getGoalsForActivity(activityId: Int) {
        // get goals for activity code goes here
    }
    
    //33
    func createGoal(goal: String, activityId: Int, userId: String) {
        // create goal code goes here
    }
    
    //34
    func deleteGoal(goalId: Int) {
        // delete goal code goes here
    }
    
    //35
    func editGoal(goalId: Int, newGoal: String) {
        // edit goal code goes here
    }
    
    //36
    func getProgressForGoal(goalId: Int) {
        // get progress for goal code goes here
    }
    
    //37
    func setProgressForGoal(goalId: Int, progress: Double) {
        // set progress for goal code goes here
    }
    
    //38
    func createEvent(event: String, user: String, startDate: Date, endDate: Date, invitees: [String]) {
        // create event code goes here
    }
    
    //39
    func deleteEvent(eventId: Int) {
        // delete event code goes here
    }
    
    //40
    func editEvent(eventId: Int, newEvent: String, newStartDate: Date, newEndDate: Date, newInvitees: [String]) {
        // edit event code goes here
    }
    
    //41
    func getEventsForUser(userId: String) {
        // get events for user code goes here
    }
    
    //42
    func getInviteesForEvent(eventId: Int) {
        // get invitees for event code goes here
    }
    
    //43
    func addInviteeToEvent(userId: String, eventId: Int) {
        // add invitee to event code goes here
    }
    
    //44
    func removeInviteeFromEvent(userId: String, eventId: Int) {
        // remove invitee from event code goes here
    }
    
    //45
    func createTeam(name: String, description: String, goals: [String], users: [String]) {
        // create team code goes here
    }
    
    //46
    func deleteTeam(teamId: Int) {
        // delete team code goes here
    }
    
    //47
    func editTeam(teamId: Int, newName: String, newDescription: String, newGoals: [String], newUsers: [String]) {
        // edit team code goes here
    }
    
    //48
    func getTeamsForUser(userId: String) {
        // get teams for user code goes here
    }
    
    //49
    func getGoalsForTeam(teamId: Int) {
        // get goals for team code goes here
    }
    
    //50
    func getUsersForTeam(teamId: Int) {
        // get users for team code goes here
    }
    
    //51
    func addUserToTeam(userId: String, teamId: Int) {
        // adduser to team code goes here
    }
    
    //52
    func removeUserFromTeam(userId: String, teamId: Int) {
        // remove user from team code goes here
    }
    
    //53
    func createTask(task: String, userId: String, teamId: Int, dueDate: Date) {
        // create task code goes here
    }
    
    //54
    func deleteTask(taskId: Int) {
        // delete task code goes here
    }
    
    //55
    func editTask(taskId: Int, newTask: String, newDueDate: Date) {
        // edit task code goes here
    }
    
    //56
    func getTasksForUser(userId: String) {
        // get tasks for user code goes here
    }
    
    //57
    func getTasksForTeam(teamId: Int) {
        // get tasks for team code goes here
    }
    
    //58
    func addTaskToTeam(taskId: Int, teamId: Int) {
        // add task to team code goes here
    }
    
    //59
    func removeTaskFromTeam(taskId: Int, teamId: Int) {
        // remove task from team code goes here
    }
    
    //60
    func getProgressForTask(taskId: Int) {
        // get progress for task code goes here
    }
    
    //61
    func setProgressForTask(taskId: Int, progress: Double) {
        // set progress for task code goes here
    }
    
    //62
    func createSurvey(name: String, questions: [String]) {
        // create survey code goes here
    }
    
    //63
    func deleteSurvey(surveyId: Int) {
        // delete survey code goes here
    }
    
    //64
    func editSurvey(surveyId: Int, newName: String, newQuestions: [String]) {
        // edit survey code goes here
    }
    
    //65
    func getSurveys() {
        // get surveys code goes here
    }
    
    //66
    func getQuestionsForSurvey(surveyId: Int) {
        // get questions for survey code goes here
    }
    
    //67
    func addQuestionToSurvey(question: String, surveyId: Int) {
        // add question to survey code goes here
    }
    
    //68
    func removeQuestionFromSurvey(questionId: Int, surveyId: Int) {
        // remove question from survey code goes here
    }
    
    //69
    func getResponsesForSurvey(surveyId: Int) {
        // get responses for survey code goes here
    }
    
    //70
    func submitResponseForSurvey(response: [String], surveyId: Int, userId: String) {
        // submit response for survey code goes here
    }
    
    //71
    func createJournal(name: String, userId: String) {
        // create journal code goes here
    }
    
    //72
    func deleteJournal(journalId: Int) {
        // delete journal code goes here
    }
    
    //73
    func editJournal(journalId: Int, newName: String) {
        // edit journal code goes here
    }
    
    //74
    func getJournalsForUser(userId: String) {
        // get journals for user code goes here
    }
    
    //75
    func getEntriesForJournal(journalId: Int) {
        // get entries for user code goes here
    }
    
    //76
    func addEntryToJournal(entry: String, journalId: Int) {
        // add entry to journal code goes here
    }
    
    //77
    func removeEntryFromJournal(entryId: Int, journalId: Int) {
        // remove entry from journal code goes here
    }
    
    //78
    func createProject(name: String, description: String, userId: String, dueDate: Date) {
        // create project code goes here
    }
    
    //79
    func deleteProject(projectId: Int) {
        // delete project code goes here
    }
    
    //80
    func editProject(projectId: Int, newName: String, newDescription: String, newDueDate: Date) {
        // edit project code goes here
    }
    
    //81
    func getProjectForUser(userId: String) {
        // get project for user code goes here
    }
    
    //82
    func getTasksForProject(projectId: Int) {
        // get tasks for project code goes here
    }
    
    //83
    func addTaskToProject(taskId: Int, projectId: Int) {
        // add task to project code goes here
    }
    
    //84
    func removeTaskFromProject(taskId: Int, projectId: Int) {
        // remove task from project code goes here
    }
    
    //85
    func getGroupsForUser(userId: String) {
        // get groups for user code goes here
    }
    
    //86
    func createGroup(name: String, description: String, userIds: [String]) {
        // create group code goes here
    }
    
    //87
    func deleteGroup(groupId: Int) {
        // delete group code goes here
    }
    
    //88
    func editGroup(groupId: Int, newName: String, newDescription: String, newUserIds: [String]) {
        // edit group code goes here
    }
    
    //89
    func getUsersForGroup(groupId: Int) {
        // get users for group code goes here
    }
    
    //90
    func addUserToGroup(userId: String, groupId: Int) {
        // add user to group code goes here
    }
    
    //91
    func removeUserFromGroup(userId: String, groupId: Int) {
        // remove user from group code goes here
    }
    
    //92
    func getGoalsForGroup(groupId: Int) {
        // get goals for group code goes here
    }
    
    //93
    func createGoalForGroup(goal: String, groupId: Int, userId: String) {
        // create goal for group code goes here
    }
    
    //94
    func deleteGoalForGroup(goalId: Int) {
        // delete goal for group code goes here
    }
    
    //95
    func editGoalForGroup(goalId: Int, newGoal: String) {
        // edit goal for