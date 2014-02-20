class UserSerializer < BaseSerializer
  attributes :id, :email, :param, :ability

  def param
    namePortion = email.split('@').first
    "#{id}-#{namePortion.dasherize.parameterize}"
  end

  def ability
    current_user.get_abilities
  end
end

