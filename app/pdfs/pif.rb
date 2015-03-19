require 'prawn'

class Pif < Prawn::Document
  def initialize(project, view)
    super(top_margin: 50)
    @project = project
    @view = view
    funabounds_logo
    project_info
  end

  def funabounds_logo
    move_up 20
    image "#{Rails.root}/app/assets/images/funabounds.png", height: 75, position: 400
  end

  def project_info
    move_up 45
    text "PIF \##{@project.id}",
         size:14
    text "Generated: #{(Date.current).in_time_zone("Central Time (US & Canada)").strftime("%x")} #{Time.now.in_time_zone("Central Time (US & Canada)").strftime("%I:%M %P")}",
         size:14
  end




end