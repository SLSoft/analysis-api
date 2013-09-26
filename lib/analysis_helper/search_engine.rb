module AnalysisHelper
  ENGINES = [
              ["google", "utf8", "q"],
              ["baidu", "utf8", "q"],
              ["yahoo", "utf8", "q"],
              ["bin", "utf8", "q"],
              ["youdao", "utf8", "q"],
              ["live", "utf8", "q"],
              ["360", "utf8", "q"],
              ["soso", "utf8", "q"],
              ["163", "utf8", "q"],
              ["sogou", "utf8", "q"],
              ["iask", "utf8", "q"],
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
