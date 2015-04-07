


# ---------------Wave 1-------------------------------------------

open(Rails.root.join('app','assets','seed_files','Wave1','category_types.txt')) do |category_types|
  category_types.read.each_line do |category_type|
    line = category_type.gsub("\r\n","")
    category_type_name = line
    CategoryType.create(:category_type_name => category_type_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','contact_types.txt')) do |contact_types|
  contact_types.read.each_line do |contact_type|
    line = contact_type.gsub("\r\n","")
    contact_type_name = line
    ContactType.create(:contact_type_name => contact_type_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','deal_types.txt')) do |deal_types|
  deal_types.read.each_line do |deal_type|
    line = deal_type.gsub("\r\n","")
    deal_type_name = line
    DealType.create(:deal_type_name => deal_type_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','irrigation_responsibilities.txt')) do |irrigation_responsibilities|
  irrigation_responsibilities.read.each_line do |irrigation_responsibility|
    line = irrigation_responsibility.gsub("\r\n","")
    irrigation_responsibility_name = line
    IrrigationResponsibility.create(:irrigation_responsibility_name => irrigation_responsibility_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','procurement_tools.txt')) do |procurement_tools|
  procurement_tools.read.each_line do |procurement_tool|
    line = procurement_tool.gsub("\r\n","")
    procurement_tool_name = line
    ProcurementTool.create(:procurement_tool_name => procurement_tool_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','project_settings.txt')) do |project_settings|
  project_settings.read.each_line do |project_setting|
    line = project_setting.gsub("\r\n","")
    project_setting_name = line
    ProjectSetting.create(:project_setting_name => project_setting_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','project_types.txt')) do |project_types|
  project_types.read.each_line do |project_type|
    line = project_type.gsub("\n","")
    project_type_name = line
    ProjectType.create(:project_type_name => project_type_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','requested_sales_documents.txt')) do |requested_sales_documents|
  requested_sales_documents.read.each_line do |requested_sales_document|
    line = requested_sales_document.gsub("\r\n","")
    requested_sales_document_name = line
    RequestedSalesDocument.create(:requested_sales_document_name => requested_sales_document_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','states.txt')) do |states|
  states.read.each_line do |state|
    line = state.gsub("\r\n","")
    state_name,state_abbreviation = line.chomp.split("|")
    State.create(:state_name => state_name, :state_abbreviation => state_abbreviation)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','status_categories.txt')) do |status_categories|
  status_categories.read.each_line do |status_category|
    line = status_category.gsub("\r\n","")
    status_category_name = line
    StatusCategory.create(:status_category_name => status_category_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','utilities.txt')) do |utilities|
  utilities.read.each_line do |utility|
    line = utility.gsub("\r\n","")
    utility_name = line
    Utility.create(:utility_name => utility_name)
  end
end

# ---------------Wave 2-------------------------------------------


open(Rails.root.join('app','assets','seed_files','Wave2','categories.txt')) do |categories|
  categories.read.each_line do |category|
    line = category.gsub("\r\n","")
    category_name,project_type_id,category_type_id = line.chomp.split("|")
    Category.create(:category_name => category_name, :project_type_id => project_type_id, :category_type_id => category_type_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave2','clients.txt')) do |clients|
  clients.read.each_line do |client|
    line = client.gsub("\r\n","")
    client_name,billing_address,billing_city,billing_zip,state_id = line.chomp.split("|")
    Client.create(:client_name => client_name, :billing_address => billing_address, :billing_city => billing_city, :billing_zip => billing_zip, :state_id => state_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave2','installers.txt')) do |installers|
  installers.read.each_line do |installer|
    line = installer.gsub("\r\n","")
    installer_first_name,installer_last_name,installer_email,installer_phone = line.chomp.split("|")
    Installer.create(:installer_first_name => installer_first_name, :installer_last_name => installer_last_name, :installer_email => installer_email, :installer_phone => installer_phone)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave2','project_statuses.txt')) do |project_statuses|
  project_statuses.read.each_line do |project_status|
    line = project_status.gsub("\r\n","")
    project_status_name, status_category_id = line.chomp.split("|")
    ProjectStatus.create(:project_status_name => project_status_name,:status_category_id => status_category_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave2','projects.txt')) do |projects|
  projects.read.each_line do |project|
    line = project.gsub("\r\n","")
    project_name,start_date,proposal_deadline,client_goal,time_frame_description,mobilization_quantity,liquidate_damages_yn,prevailing_wages_certified_payroll_yn,permit_special_inspection_in_possession,restricted_work_hours,permit_submittal_required,permit_fees_required,project_budget,deal_type_description,procurement_tool_description,deal_type_id,project_setting_id,procurement_tool_id,sales_person_id,project_status_id,irrigation_responsibility_id = line.chomp.split("|")
    Project.create(:project_name => project_name,:start_date => start_date,:proposal_deadline => proposal_deadline,:client_goal => client_goal,:time_frame_description => time_frame_description,:mobilization_quantity => mobilization_quantity,:liquidate_damages_yn => liquidate_damages_yn,:prevailing_wages_certified_payroll_yn => prevailing_wages_certified_payroll_yn,:permit_special_inspection_in_possession => permit_special_inspection_in_possession,:restricted_work_hours => restricted_work_hours,:permit_submittal_required => permit_submittal_required,:permit_fees_required => permit_fees_required,:project_budget => project_budget,:deal_type_description => deal_type_description,:procurement_tool_description => procurement_tool_description,:deal_type_id => deal_type_id,:project_setting_id => project_setting_id,:procurement_tool_id => procurement_tool_id,:sales_person_id => sales_person_id,:project_status_id => project_status_id,:irrigation_responsibility_id => irrigation_responsibility_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave2','questions.txt')) do |questions|
  questions.read.each_line do |question|
    line = question.gsub("\r\n","")
    question_name,project_type_id = line.chomp.split("|")
    Question.create(:question_name => question_name, :project_type_id => project_type_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave2','sales_people.txt')) do |sales_people|
  sales_people.read.each_line do |sales_person|
    line = sales_person.gsub("\r\n","")
    sales_person_first_name,sales_person_last_name,sales_person_email,sales_person_phone = line.chomp.split("|")
    SalesPerson.create(:sales_person_first_name => sales_person_first_name, :sales_person_last_name => sales_person_last_name, :sales_person_email => sales_person_email, :sales_person_phone => sales_person_phone)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave2','sites.txt')) do |sites|
  sites.read.each_line do |site|
    line = site.gsub("\r\n","")
    site_name,site_address,site_city,site_zip,site_access,state_id = line.chomp.split("|")
    ProjectSite.create(:site_name => site_name,:site_address => site_address,:site_city => site_city,:site_zip => site_zip,:site_access => site_access,:state_id => state_id )
  end
end


# ---------------Wave 3-------------------------------------------
open(Rails.root.join('app','assets','seed_files','Wave3','category_options.txt')) do |category_options|
  category_options.read.each_line do |category_option|
    line = category_option.gsub("\r\n","")
    category_option_name,category_id = line.chomp.split("|")
    CategoryOption.create(:category_option_name => category_option_name, :category_id => category_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave3','contacts.txt')) do |contacts|
  contacts.read.each_line do |contact|
    line = contact.gsub("\r\n","")
    contact_first_name,contact_last_name,contact_email,contact_work,contact_cell,contact_address,contact_city,contact_zip,contact_type_id,client_id,state_id = line.chomp.split("|")
    Contact.create(:contact_first_name => contact_first_name, :contact_last_name => contact_last_name, :contact_email => contact_email, :contact_cell => contact_cell, :contact_work => contact_work, :contact_address => contact_address, :contact_zip => contact_zip, :contact_city => contact_city, :contact_type_id => contact_type_id, :client_id => client_id, :state_id => state_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave3','project_requested_sales_documents.txt')) do |project_requested_sales_documents|
  project_requested_sales_documents.read.each_line do |project_requested_sales_document|
    line = project_requested_sales_document.gsub("\r\n","")
    project_id,requested_sales_document_id = line.chomp.split("|")
    ProjectRequestedSalesDocument.create(:project_id => project_id, :requested_sales_document_id => requested_sales_document_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave3','project_site_informations.txt')) do |project_site_informations|
  project_site_informations.read.each_line do |project_site_information|
    line = project_site_information.gsub("\r\n","")
    project_site_id,area_length,area_width,area_description,geotech_report_in_possession,bobcat_accessible,drill_rig_access,concrete_truck_access,crane_access,skytrack_boomlift_access,construction_fence_required,client_fence_dismantle_reinstall_required,soil_condition,rock_excavation_required,hand_dig_required,dirt_haul_off_required,tree_vegetation_removal_required,area_is_sloped,site_survey_required,surface_protection_required,under_ground_obstacles_yn,structural_removal_required,pvt_locator_required,project_id = line.chomp.split("|")
    ProjectSiteInformation.create(:project_site_id => project_site_id,:area_length => area_length,:area_width => area_width,:area_description => area_description,:geotech_report_in_possession => geotech_report_in_possession,:bobcat_accessible => bobcat_accessible,:drill_rig_access => drill_rig_access,:concrete_truck_access => concrete_truck_access,:crane_access => crane_access,:skytrack_boomlift_access => skytrack_boomlift_access,:construction_fence_required => construction_fence_required,:client_fence_dismantle_reinstall_required => client_fence_dismantle_reinstall_required,:soil_condition => soil_condition,:rock_excavation_required => rock_excavation_required,:hand_dig_required => hand_dig_required,:dirt_haul_off_required => dirt_haul_off_required,:tree_vegetation_removal_required => tree_vegetation_removal_required,:area_is_sloped => area_is_sloped,:site_survey_required => site_survey_required,:surface_protection_required => surface_protection_required,:under_ground_obstacles_yn => under_ground_obstacles_yn,:structural_removal_required => structural_removal_required,:pvt_locator_required => pvt_locator_required,:project_id => project_id)
  end
end




# ---------------Wave 4-------------------------------------------
open(Rails.root.join('app','assets','seed_files','Wave4','project_contacts.txt')) do |project_contacts|
  project_contacts.read.each_line do |project_contact|
    line = project_contact.gsub("\r\n","")
    contact_id,project_id = line.chomp.split("|")
    ProjectContact.create(:contact_id => contact_id, :project_id => project_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave4','project_type_informations.txt')) do |project_type_informations|
  project_type_informations.read.each_line do |project_type_information|
    line = project_type_information.gsub("\r\n","")
    proposal_number,revision_number,project_type_id,project_site_information_id = line.chomp.split("|")
    ProjectTypeInformation.create(:proposal_number => proposal_number, :revision_number => revision_number, :project_type_id => project_type_id, :project_site_information_id => project_site_information_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave4','project_utilities.txt')) do |project_utilities|
  project_utilities.read.each_line do |project_utility|
    line = project_utility.gsub("\r\n","")
    utility_id,project_site_information_id = line.chomp.split("|")
    ProjectUtility.create(:utility_id => utility_id, :project_site_information_id => project_site_information_id)
  end
end



# ---------------Wave 5-------------------------------------------
open(Rails.root.join('app','assets','seed_files','Wave5','answers.txt')) do |answers|
  answers.read.each_line do |answer|
    line = answer.gsub("\r\n","")
    answer_text,project_type_information_id,question_id = line.chomp.split("|")
    Answer.create(:answer_text => answer_text, :project_type_information_id => project_type_information_id,:question_id => question_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave5','category_option_selections.txt')) do |category_option_selections|
  category_option_selections.read.each_line do |category_option_selection|
    line = category_option_selection.gsub("\r\n","")
    category_option_id,project_type_information_id = line.chomp.split("|")
    CategoryOptionSelection.create(:category_option_id => category_option_id, :project_type_information_id => project_type_information_id)
  end
end