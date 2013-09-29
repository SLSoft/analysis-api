module AnalysisHelper 
  module EngineHelper 
    ENGINES = [
                ["google", "utf8", "q"],
                ["baidu", "gb2312", "wd"],
                ["yahoo", "utf8", "p"],
                ["bing", "utf8", "q"],
                ["youdao", "utf8", "q"],
                ["live", "utf8", "q"],
                ["360", "utf8", "q"],
                ["soso", "utf8", "w"],
                ["163", "gb2312", "q"],
                ["sogou", "gb2312", "query"],
                ["iask", "gb2312", "q"],
                ["lycos", "utf8", "q"]
              ] 

    class << self
      def grep_engine_name upper_url  
        grep_from_url(upper_url) { |engine| engine[0] }
      end
      alias is_from_engine? grep_engine_name

      def grep_keywords upper_url
        re = /(\?|&)#{grep_search_type(upper_url)}=(.*?)(?:&|$)/
        matcher = re.match upper_url 

        matcher[2].split('+')
      end

      private
      def grep_search_type upper_url 
        grep_from_url(upper_url) { |engine| engine[2] }
      end 

      def grep_from_url upper_url
        ENGINES.each do |engine| 
          return yield engine if upper_url.include? engine[0]
        end 
        nil 
      end 

      def split_keywords keywords 
      end
    end 
  end 
end
