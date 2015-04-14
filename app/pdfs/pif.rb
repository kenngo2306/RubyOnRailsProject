require 'prawn'

class Pif < Prawn::Document
  def initialize(project, view)
    super(top_margin: 50)
    @project = project

    @view = view
    funabounds_logo
    pif_info
    project_summary
    project_contact_rows
    generate_project_sites
    requested_docs
    site_info
    design_information_header
    # test_things
  end

  def funabounds_logo
    move_up 20
    image "#{Rails.root}/app/assets/images/funabounds.png", height: 75, position: 375
  end

  def pif_info
    move_up 50
    text "Project Information Form \##{@project.id}",
         size:12
    text "Generated: #{(Date.current).in_time_zone("Central Time (US & Canada)").strftime("%x")} #{Time.now.in_time_zone("Central Time (US & Canada)").strftime("%I:%M %P")}",
         size:12
  end

  #general project info table
  def project_summary
    move_down 50
    summary = [["Project Summary","","",""],
           ["Project Name","Sales Person","Project Status","No. of Sites"],
           [@project.project_name, "#{@project.sales_person.sales_person_first_name} #{@project.sales_person.sales_person_last_name}", @project.project_status.project_status_name ,@project.project_sites.count],
           ["Project Setting","Procurement Tool","Deal Type","Irrigation Responsibility"],
           [@project.project_setting.project_setting_name,@project.procurement_tool.procurement_tool_name,@project.deal_type.deal_type_name,@project.irrigation_responsibility.irrigation_responsibility_name]
               ]
    table summary do
      rows(0..1).font_style = :bold
      row(3).font_style = :bold
      rows(0).background_color = "a414e2"
      rows(0).text_color = "FFFFFF"
      self.row_colors = ["addbed","25b2ea"]
      column(0).width = 160
      column(1).width = 125
      column(2).width = 126
      column(3).width = 126
      columns(0..3).size = 10
      column(0).row(0).borders = :top, :left
      columns(1..2).row(0).borders = :top, :bottom
      column(3).row(0).borders = :top, :bottom, :right
    end
  end

  def requested_docs
   move_down 20
   docs = [["Documents Require Information"],["Requested Sales Documents"]]
    @project.project_requested_sales_documents.map do |sales|
      docs = docs + [[sales.requested_sales_document.requested_sales_document_name]]
      end

   table docs do
      rows(0..1).font_style = :bold
      rows(0).background_color = "a414e2"
      rows(1).background_color = "3affca"
      rows(2..-1).background_color = "adffe9"
      column(0).size = 10
      rows(0).text_color = "FFFFFF"
      column(0).width = 285
   end
  end

  def project_contact_rows
    move_down 20
    contact =
     [["Project Contacts","","","",""]] +
     [["Contact Type","Contact Name","Contact Phone", "Contact Address","Contact Email"]]
     @project.project_contacts.map do |pc|
     contact +=  [[pc.contact.contact_type.contact_type_name, "#{pc.contact.contact_first_name} #{pc.contact.contact_last_name}", "Cell: #{pc.contact.contact_cell} \n \n Work: #{pc.contact.contact_work}", "#{pc.contact.contact_address}  #{pc.contact.contact_city}, #{pc.contact.state.state_name}  #{pc.contact.contact_zip}", pc.contact.contact_email]]
     end


  #  contact = contact + [[]] +
  #  @project.project_contacts.map do |pc|
  #    [pc.contact.contact_email, pc.contact.contact_work]
  #  end
      table contact do
     columns(0..5).size = 10
     rows(0..1).font_style = :bold
     rows(0).text_color = "FFFFFF"
     column(0).width = 80
     column(1).width = 100
     column(2).width = 110
     column(3).width = 123
     column(4).width = 125
     rows(0).background_color = "a414e2"
     rows(1).background_color = "efb34c"
     rows(2..-1).background_color = "f9e5b1"
     column(0).row(0).borders = :top, :left
     columns(1..3).row(0).borders = :top, :bottom
     column(4).row(0).borders = :top, :bottom, :right
      end
  end

  #project sites table
  def generate_project_sites
   move_down 20
    table project_site_rows do
      rows(0..1).font_style = :bold
      rows(0).text_color = "FFFFFF"
      column(0).width = 160
      column(1).width = 125
      column(2).width = 253
      rows(0).background_color = "a414e2"
      rows(1).background_color = "f76571"
      rows(2..-1).background_color = "f7c3c6"
      columns(0..2).size = 10
      column(0).row(0).borders = :top, :left
      columns(1).row(0).borders = :top, :bottom
      column(2).row(0).borders = :top, :bottom, :right
    end
  end

  def project_site_rows
    [["Project Sites","",""]] +
    [["Site Name", "Site Access","Address"]] +
    @project.project_site_informations.map do |psi|
      [psi.project_site.site_name, psi.project_site.site_access,"#{psi.project_site.site_address}  #{psi.project_site.site_city}, #{psi.project_site.state.state_name}  #{psi.project_site.site_zip}"]
    end
  end

  # def project_site_info
  # a = [["Project Site Information"]]
  # @project.project_site_informations.map do |psi|
  #  start_new_page
  #  a = a + [["Site Name","Site Access","Site Address"]] +
  #   [[psi.project_site.site_name,psi.project_site.site_access,psi.project_site.site_address]]
  #  psi.project_type_informations.map do |pti|
  #   a = a + [["Proposal Number",pti.proposal_number] +
  #             ["Revision Number",pti.revision_number]] +
  #    [["Project Design Information"]]
  #   pti.category_option_selections.map do |cos|
  #    a = a + [[cos.category_option.category.category_name,cos.category_option.category_option_name]]
  #   end
  #   pti.answers.map do |answer|
  #    a = a + [[answer.question.question_name,answer.answer_text]]
  #   end
  #  end
  # end
  # end

  def design_information_header
     @project.project_site_informations.map do |psi|
      si =
       [ ["Project Name",psi.project.project_name, "Site Name",psi.project_site.site_name],
         ["Area Length",psi.area_length,"Area_Width",psi.area_width],
         ["Area Description",psi.area_description,"Surface Protection?",psi.surface_protection_required.to_s],
         ["Underground Obstacles?", psi.under_ground_obstacles_yn.to_s,"Structural Removal?",psi.structural_removal_required.to_s],
         ["Bobcat Accessible?",psi.bobcat_accessible.to_s,"PVT Locator?",psi.pvt_locator_required.to_s],
         ["Construction Fence?",psi.construction_fence_required.to_s,"Soil Condition",psi.soil_condition],
         ["Client Fence Reinstall?",psi.client_fence_dismantle_reinstall_required.to_s,"Drill Rig Access?",psi.drill_rig_access.to_s],
         ["Rock Excavation?",psi.rock_excavation_required.to_s,"Skytrack Boomlift Access?",psi.skytrack_boomlift_access.to_s],
         ["Hang Dig?",psi.hand_dig_required.to_s,"Geotech Report Possessed?",psi.geotech_report_in_possession.to_s],
         ["Dirt Haul Off?", psi.dirt_haul_off_required.to_s,"Crane Access?",psi.crane_access.to_s],
         ["Tree Vegetation?", psi.tree_vegetation_removal_required.to_s,"Concrete Truck Access?",psi.concrete_truck_access.to_s],
         ["Sloped Area?",psi.area_is_sloped.to_s,"Site Survey Required?", psi.site_survey_required.to_s]
       ]
      psi.project_type_informations.map do |pti|
         # psi.project_type_informations.map do |pti|
         #  [[pti.project_type.project_type_name]]
        design_header = [["Project Design Information","Project Type: " + pti.project_type.project_type_name]] +
        [["Proposal Number","Revision Number"]]
        design_header = design_header + [[pti.proposal_number,pti.revision_number]]
        pti.category_option_selections.map do |cos|
         design_header = design_header + [[cos.category_option.category.category_name,cos.category_option.category_option_name]]
        end
        pti.answers.map do |answer|
         design_header = design_header + [[answer.question.question_name,answer.answer_text]]
        end
        move_down 20
        start_new_page
        table si do
         columns(0..3).rows(1..-1).width = 135
         column(0).font_style = :bold
         column(2).rows(1..-1).font_style = :bold
         column(1).row(0).font_style = :bold
         rows(0..-1).size = 10
         column(0).rows(1..-1).background_color = "3affca"
         column(1).background_color = "adffe9"
         column(2).rows(0..-1).background_color = "3affca"
         column(3).background_color = "adffe9"
         columns(0..1).row(0).background_color = "00dba0"
         column(2..3).row(0).background_color = "f76571"
         column(0).row(0).borders = :top, :left
         column(1).row(0).borders = :top, :bottom, :right
        end
        move_down 20
        start_new_page
        table design_header do
         row(0..1).font_style = :bold
         column(0).rows(3..-1).font_style = :bold
         column(2).font_style = :bold
         column(0..1).width = 270
         rows(0..-1).size = 10
         rows(0).background_color = "f7c3c6"
        end
       end
    end
  end

  #project type information table
#   def design_information
#     @project.project_site_informations.map do |psi|
#       psi.project_type_informations.map do |pti|
#          pti.category_option_selections.map do |cos|
#           a = [[cos.category_option.category.category_name,cos.category_option.category_option_name]]
#          end
#         pti.answers.map do |answer|
#           a = a + [[answer.question.question_name,answer.answer_text]]
#
#     table a do
#       rows(0..1).font_style = :bold
#       column(0).font_style = :bold
#       columns(0..1).width = 135
# #      rows(0).text_color = "FFFFFF"
#       rows(0..-1).size = 10
#       column(0).background_color = "4ff9a7"
#       column(1).background_color = "9ffccf"
#     end
#
#     end
#      end
#     end
#   end

 # def project_type_list
 #   move_down 20
 #   @project.project_site_informations.map do |psi|
 #     psi.project_type_informations.map do |pti|
 #        pt = [["Project Types:",pti.project_type.project_type_name]]
 #       table pt do
 #        column(0..-1).position = 200
 #        column(0).font_style = :bold
 #        rows(0..-1).size = 10
 #       end
 #     end
 #   end
 # end

 def site_info
  # @project.project_site_informations.map do |psi|
  #   move_down 20
  #   start_new_page
  #  si = [["Project Site Information"]]
  #     si = si +
  #   [ ["Project Name",psi.project.project_name, "Site Name",psi.project_site.site_name],
  #     ["Area Length",psi.area_length,"Area_Width",psi.area_width],
  #     ["Area Description",psi.area_description,"Surface Protection?",psi.surface_protection_required.to_s],
  #     ["Underground Obstacles?",psi.under_ground_obstacles_yn.to_s,"Structural Removal?",psi.structural_removal_required.to_s],
  #     ["Bobcat Accessible?",psi.bobcat_accessible.to_s,"PVT Locator?",psi.pvt_locator_required.to_s],
  #     ["Construction Fence?",psi.construction_fence_required.to_s,"Soil Condition",psi.soil_condition],
  #     ["Client Fence Reinstall?",psi.client_fence_dismantle_reinstall_required.to_s,"Drill Rig Access?",psi.drill_rig_access.to_s],
  #     ["Rock Excavation?",psi.rock_excavation_required.to_s,"Skytrack Boomlift Access?",psi.skytrack_boomlift_access.to_s],
  #     ["Hang Dig?",psi.hand_dig_required.to_s,"Geotech Report Possessed?",psi.geotech_report_in_possession.to_s],
  #     ["Dirt Haul Off?", psi.dirt_haul_off_required.to_s,"Crane Access?",psi.crane_access.to_s],
  #     ["Tree Vegetation?", psi.tree_vegetation_removal_required.to_s,"Concrete Truck Access?",psi.concrete_truck_access.to_s],
  #     ["Sloped Area?",psi.area_is_sloped.to_s,"Site Survey Required?", psi.site_survey_required.to_s]
  #    ]
  #  table si do
  #    columns(0..3).rows(1..-1).width = 135
  #    column(0).font_style = :bold
  #    column(2).font_style = :bold
  #    rows(0..-1).size = 10
  #    column(0).background_color = "55b9fc"
  #    column(1).background_color = "92d2fc"
  #    column(2).background_color = "55b9fc"
  #    column(3).background_color = "92d2fc"
  #  end
  #  end
 end
end



