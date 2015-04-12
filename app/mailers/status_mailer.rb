class StatusMailer < ApplicationMailer
default from: "funaboundshouston@gmail.com"

  def sample_email(project)
    @project = project
    mail(to: 'funaboundshouston@gmail.com', subject: 'Status Change:' + @project.project_name)
  end
end
