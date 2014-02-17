class UserSerializer < BaseSerializer
  attributes :id, :email, :param, :ability

  def param
    namePortion = email.split('@').first
    "#{id}-#{namePortion.dasherize.parameterize}"
  end

  def ability
    User.find(self.id).get_abilities
  end
end

