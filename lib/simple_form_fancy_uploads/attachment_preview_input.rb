module SimpleFormFancyUploads
  class AttachmentPreviewInput < SimpleForm::Inputs::FileInput
    def input
      out = ''
      if object.send(attribute_name).present?
        out << template.link_to(object.send(attribute_name).file.filename, object.send(attribute_name).url)
        out << " "
      end
      (out << super).html_safe
    end
  end
end
