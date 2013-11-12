require 'code_metrics'

module Debt
  module Command
    def self.run(args)
      if args.first == "code_metrics"
        raw_code_metrics
      else
        puts "TODO"
      end
    end

    def self.raw_code_metrics
      CodeMetrics::Statistics.new(*CodeMetrics::StatsDirectories.new.directories).to_s
    end
  end
end