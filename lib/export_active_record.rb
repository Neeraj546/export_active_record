class ExportActiveRecord

  def self.generate_excel(class_name)
    @class = class_name.to_s.constantize
    file_name = "Export_#{class_name}.xlsx"
    filepath = Rails.root.join('tmp', file_name)
    package = Axlsx::Package.new
    workbook = package.workbook
    sheet_name = class_name.to_s
    sheet = workbook.add_worksheet(name: sheet_name)

    sheet.add_row @class.attribute_names
    items = @class.all
    if items.present?
      items.find_each do |item|
        sheet.add_row item.attributes.values
      end
    end
    package.serialize(filepath)

    return filepath
  end

end