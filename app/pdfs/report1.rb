class Pif < Prawn::Document
 def initialize(project, view)
  super(top_margin: 50)
  @project = project
  @view = view
 end
end