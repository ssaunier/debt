require "debt/command"

module Debt
  class CLI
    def self.start(*args)
      begin
        if $stdin.isatty
          $stdin.sync = true
        end
        if $stdout.isatty
          $stdout.sync = true
        end
        Debt::Command.run args
      rescue Interrupt
        `stty icanon echo`
        $stderr.puts "Command cancelled."
      rescue => error
        $stderr.puts error
        exit(1)
      end
    end
  end
end