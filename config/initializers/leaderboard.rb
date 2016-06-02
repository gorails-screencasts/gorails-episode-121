class Leaderboard
  def paginate(options = {})
    page     = options[:page].to_i || 1
    per_page = options[:per_page] || self.page_size
    total    = options[:total_entries] || self.total_members

    WillPaginate::Collection.create(page, per_page, total) do |pager|
      pager.replace leaders(page)
    end
  end
end
