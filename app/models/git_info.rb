class GitInfo
  attr_accessor :information
  def initialize(user_name: username)
    @information = HTTParty.get("https://api.github.com/users/blakestrickland/repos?token=#{ENV['GITHUB_KEY']}")
  end
  def list_of_repos
    list = []
    @information.each do |x|
      list << x
    end
  end
end
