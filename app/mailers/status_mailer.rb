class StatusMailer < ApplicationMailer
default from: "status_change@fabplaygounds.com"

  def sample_email(project)
    @project = project
    mail(to: 'rthonsgard@gmail.com', subject: 'Status Change:' + @project.project_name)
  end
end
