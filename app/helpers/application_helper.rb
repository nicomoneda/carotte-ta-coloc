module ApplicationHelper

  def current_coloc
    current_user&.coloc
  end

end
