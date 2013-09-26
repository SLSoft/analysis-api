module AnalysisHelper
  ENGINES = [
              ["google", "utf8", "q"],
              ["baidu", "gb2312", "(?:wd|word)"],
              ["yahoo", "utf8", "p"],
              ["bing", "utf8", "q"],
              ["youdao", "utf8", "q"],
              ["live", "utf8", "q"],
              ["360", "utf8", "q"],
              ["soso", "utf8", "(?:w|key)"],
              ["163", "gb2312", "q"],
              ["sogou", "gb2312", "query"],
              ["iask", "gb2312", "q"],
              ["lycos", "utf8", "q"]
            ]

  class SearchEngine

    def initialize request_data
      @request_data = request_data
    end

    def engine_name
      'google'
    end 

  end
end
