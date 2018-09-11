# Update this hash so that each step has the name of a committee member associated with it (i.e. by adding an additional person key in each step hash),
# and each committee member has an equal number of tasks. Avoid typing out the committee members' names elsewhere in your code.

project = {
  committee: ["Stella", "Salma", "Kai"], title: "Very Important Project", due_date: "December 14, 2019", id: "3284",
    steps: [{description: "conduct interviews",
             due_date: "August 1, 2018"},
            {description: "code of conduct",
             due_date: "January 1, 2018"},
            {description: "compile results",
             due_date: "November 10, 2018"},
            {description: "version 1",
             due_date: "January 15, 2019"},
            {description: "revisions",
             due_date: "March 30, 2019"},
            {description: "version 2",
             due_date: "July 12, 2019"},
            {description: "final edit",
             due_date: "October 1, 2019"},
            {description: "final version",
             due_date: "November 20, 2019"},
            {description: "Wrap up",
             due_date: "December 1, 2019"}]}


# single line code
# project[:steps][0][:project_owner] = project[:committee][0]
# project[:steps][1][:project_owner] = project[:committee][0]
# project[:steps][2][:project_owner] = project[:committee][0]
# project[:steps][3][:project_owner] = project[:committee][1]
# project[:steps][4][:project_owner] = project[:committee][1]
# project[:steps][5][:project_owner] = project[:committee][1]
# project[:steps][6][:project_owner] = project[:committee][2]
# project[:steps][7][:project_owner] = project[:committee][2]
# project[:steps][8][:project_owner] = project[:committee][2]
# puts project

committee_member_counter = 0
steps_counter = 0

3.times do
    3.times do
      project[:steps][steps_counter][:project_owner] = project[:committee][committee_member_counter]
    steps_counter +=1
    end
committee_member_counter +=1
end

project[:steps].each with_index do |k (item),v (index)|
      [k][:project_owner] = project[:committee][v]
    end



puts project
