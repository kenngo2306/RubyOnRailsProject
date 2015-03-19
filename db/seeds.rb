

#---------------Wave 1-------------------------------------------
open(Rails.root.join('app','assets','seed_files','Wave1','category_types.txt')) do |category_types|
  category_types.read.each_line do |category_type|
    category_type_name = category_type
    CategoryType.create(:category_type_name => category_type_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','contact_types.txt')) do |contact_types|
  contact_types.read.each_line do |contact_type|
    contact_type_name = contact_type
    ContactType.create(:contact_type_name => contact_type_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','deal_types.txt')) do |deal_types|
  deal_types.read.each_line do |deal_type|
    deal_type_name = deal_type
    DealType.create(:deal_type_name => deal_type_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','irrigation_responsibilities.txt')) do |irrigation_responsibilities|
  irrigation_responsibilities.read.each_line do |irrigation_responsibility|
    irrigation_responsibility_name = irrigation_responsibility
    IrrigationResponsibility.create(:irrigation_responsibility_name => irrigation_responsibility_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','procurement_tools.txt')) do |procurement_tools|
  procurement_tools.read.each_line do |procurement_tool|
    procurement_tool_name = procurement_tool
    ProcurementTool.create(:procurement_tool_name => procurement_tool_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','project_settings.txt')) do |project_settings|
  project_settings.read.each_line do |project_setting|
    project_setting_name = project_setting
    ProjectSetting.create(:project_setting_name => project_setting_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','project_statuses.txt')) do |project_statuses|
  project_statuses.read.each_line do |project_status|
    project_status_name = project_status
    ProjectStatus.create(:project_status_name => project_status_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','project_types.txt')) do |project_types|
  project_types.read.each_line do |project_type|
    project_type_name = project_type
    ProjectType.create(:project_type_name => project_type_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','requested_sales_documents.txt')) do |requested_sales_documents|
  requested_sales_documents.read.each_line do |requested_sales_document|
    requested_sales_document_name = requested_sales_document
    RequestedSalesDocument.create(:requested_sales_document_name => requested_sales_document_name)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave1','states.txt')) do |states|
  states.read.each_line do |state|
    state_name,state_abbreviation = state.chomp.split("|")
    State.create(:state_name => state_name, :state_abbreviation => state_abbreviation)
  end
end

#---------------Wave 2-------------------------------------------

open(Rails.root.join('app','assets','seed_files','Wave2','categories.txt')) do |categories|
  categories.read.each_line do |category|
    category_name,project_type_id,category_type_id = category.chomp.split("|")
    Category.create(:category_name => category_name, :project_type_id => project_type_id, :category_type_id => category_type_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave2','clients.txt')) do |clients|
  clients.read.each_line do |client|
    client_name,billing_address,billing_city,billing_zip,state_id = client.chomp.split("|")
    Client.create(:client_name => client_name, :billing_address => billing_address, :billing_city => billing_city, :billing_zip => billing_zip, :state_id => state_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave2','installers.txt')) do |installers|
  installers.read.each_line do |installer|
    installer_first_name,installer_last_name,installer_email,installer_phone = installer.chomp.split("|")
    Installer.create(:installer_first_name => installer_first_name, :installer_last_name => installer_last_name, :installer_email => installer_email, :installer_phone => installer_phone)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave2','questions.txt')) do |questions|
  questions.read.each_line do |question|
    question_name,project_type_id = question.chomp.split("|")
    Question.create(:question_name => question_name, :project_type_id => project_type_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave2','sales_people.txt')) do |sales_people|
  sales_people.read.each_line do |sales_person|
    sales_person_first_name,sales_person_last_name,sales_person_email,sales_person_phone = sales_person.chomp.split("|")
    SalesPerson.create(:sales_person_first_name => sales_person_first_name, :sales_person_last_name => sales_person_last_name, :sales_person_email => sales_person_email, :sales_person_phone => sales_person_phone)
  end
end

#---------------Wave 3-------------------------------------------
open(Rails.root.join('app','assets','seed_files','Wave3','category_options.txt')) do |category_options|
  category_options.read.each_line do |category_option|
    category_option_name,category_id = category_option.chomp.split("|")
    CategoryOption.create(:category_option_name => category_option_name, :category_id => category_id)
  end
end

open(Rails.root.join('app','assets','seed_files','Wave3','contacts.txt')) do |contacts|
  contacts.read.each_line do |contact|
    contact_first_name,contact_last_name,contact_email,contact_work,contact_cell,contact_address,contact_city,contact_zip,contact_type_id,client_id,state_id = contact.chomp.split("|")
    Contact.create(:contact_first_name => contact_first_name, :contact_last_name => contact_last_name, :contact_email => contact_email, :contact_cell => contact_cell, :contact_work => contact_work, :contact_address => contact_address, :contact_zip => contact_zip, :contact_city => contact_city, :contact_type_id => contact_type_id, :client_id => client_id, :state_id => state_id)
  end
end