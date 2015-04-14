require 'prawn'

class MonthlyClients < Prawn::Document
 def initialize(view)
  super(top_margin: 50)
  @view = view
  intro
 end

 def intro
  text "Hello"
 end
end