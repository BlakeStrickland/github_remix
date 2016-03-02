class GitInfo
  attr_accessor :user_name
  def initialize(user_name)
    username = user_name
    @information = HTTParty.get("https://api.github.com/users/#{username}/repos?token=#{ENV['GITHUB_KEY']}")
    @name = @information.first['owner']['login']
  end
  def list_of_repos
    list = []
    @information.each do |x|
      list << x['name']
    end
    list
  end
end
