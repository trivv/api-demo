module ResponseTemplate
  def self.template(code, message, content={})
    response = { code: code, message: message, data: content }
    response
  end

  def self.success(message, content={})
    template(200, message, content)
  end

  def self.error(message, content={})
    template(500, message, content)
  end

  def self.error_db(message, content={})
    template(400, message, content)
  end

  def self.token_invalid(msg)
    template(401, msg, {})
  end

  def self.exception
    template(404, I18n.t("messages.errors.object_not_found"), {})
  end
end
