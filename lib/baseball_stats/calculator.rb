module BaseballStats
  class Calculator
    def self.ops(average_record, slugging_percentage)
      sprintf("%.3f",(average_record + slugging_percentage))
    end
  end
end
