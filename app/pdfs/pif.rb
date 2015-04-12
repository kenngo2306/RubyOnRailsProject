require 'prawn'

class Pif < Prawn::Document
  def initialize(project, view)
    super(top_margin: 50)
    @project = project

    @view = view
    generate_funabounds_logo
    generate_project_info
    generate_general_project_info
    project_contact_rows
    generate_project_sites
    generate_project_type_informations
    # test_things
  end

  def generate_funabounds_logo
    move_up 20
    image "#{Rails.root}/app/assets/images/funabounds.png", height: 75, position: 400
  end

  def generate_project_info
    move_up 75
    text "Project Information Form \##{@project.id}",
         size:14
    text "Generated: #{(Date.current).in_time_zone("Central Time (US & Canada)").strftime("%x")} #{Time.now.in_time_zone("Central Time (US & Canada)").strftime("%I:%M %P")}",
         size:14
  end

  #general project info table
  def generate_general_project_info
    move_down 20
    table [["Project Summary"]] + [["Project Name","Sales Person"]] +[[@project.project_name, "#{@project.sales_person.sales_person_first_name} #{@project.sales_person.sales_person_last_name}"]] do
      rows(0..1).font_style = :bold
      rows(0).background_color = "a414e2"
      rows(0).text_color = "FFFFFF"
      rows(1).background_color = "25b2ea"
      rows(0).width = 200
      column(0).width = 150
      column(1).width = 100
    end
  end

  def project_contact_rows
    contact =[["Contact Type","Contact Name","Contact Cell", "Contact Address","Contact Email", "Contact Work"]] +
     @project.project_contacts.map do |pc|
       [pc.contact.contact_type.contact_type_name, "#{pc.contact.contact_first_name} #{pc.contact.contact_last_name}", pc.contact.contact_cell, "#{pc.contact.contact_address}  #{pc.contact.contact_city}, #{pc.contact.state.state_name}  #{pc.contact.contact_zip}", pc.contact.contact_email, pc.contact.contact_work]
     end
  #  contact = contact + [[]] +
  #  @project.project_contacts.map do |pc|
  #    [pc.contact.contact_email, pc.contact.contact_work]
  #  end
      table contact do
     rows(0).font_style = :bold
     rows(2).font_style = :bold
     columns(0).width = 60
     columns(1).width = 140
     columns(2).width = 85
     columns(3).width = 150
     rows(0).background_color = "efb34c"
     rows(2).background_color = "efb34c"
      end
  end

  #project sites table
  def generate_project_sites
    table project_site_rows do
      rows(0).font_style = :bold
      column(0).width = 150
      column(1).width = 100
      column(2).width = 280
      rows(0).background_color = "f76571"
    end
  end

  def project_site_rows
    [["Site Name", "Site Access","Address"]] +
    @project.project_site_informations.map do |psi|
      [psi.project_site.site_name, psi.project_site.site_access,"#{psi.project_site.site_address}  #{psi.project_site.site_city}, #{psi.project_site.state.state_name}  #{psi.project_site.site_zip}"]
    end
  end

  #project type information table
  def generate_project_type_informations
    move_down 20
    a = [["Project Site Information"]]
    @project.project_site_informations.map do |psi|
      start_new_page
      a = a + [["Site Name","Site Access","Site Address"]] +
                [[psi.project_site.site_name,psi.project_site.site_access,psi.project_site.site_address]]
      psi.project_type_informations.map do |pti|
        a = a + [["Proposal Number",pti.proposal_number] +
                  ["Revision Number",pti.revision_number]] +
                    [["Project Design Information"]]
        pti.category_option_selections.map do |cos|
          a = a + [[cos.category_option.category.category_name,cos.category_option.category_option_name]]
        end
        pti.answers.map do |answer|
          a = a + [[answer.question.question_name,answer.answer_text]]
        end
      end
    end
    table a do
      rows(0..1).font_style = :bold
      column(0).width = 150
      column(1).width = 100
      column(2).width = 280
      rows(0).background_color = "a414e2"
      rows(1).background_color = "f76571"
      rows(0).text_color = "FFFFFF"
    end
  end

end
