module UsersHelper

  def gravatar_for(user, size: 150)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase.strip)
    "https://www.gravatar.com/avatar/#{gravatar_id}?s=#{size}&d=404"
  end
  
end
