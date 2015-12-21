module Ruboty
  module Handlers
    class Alias < Base
      NAMESPACE = "alias"

      on(
        /alias (?<from>.+?) -> (?<to>.+)\z/m,
        description: "Create alias message",
        name: "create",
      )

      on(
        /list alias\z/,
        description: "List alias",
        name: "list",
      )

      on(
        /delete alias (?<from>.+)\z/m,
        description: "Delete alias",
        name: "delete",
      )

      on(
        //,
        description: "Resolve alias if registered",
        name: "resolve",
        hidden: true,
      )

      def create(message)
        from = message[:from]
        to = message[:to]
        table[from] = to
        message.reply("Registered alias: #{from} -> #{to}")
      end

      def delete(message)
        if table.delete(message[:from])
          message.reply("Deleted")
        else
          message.reply("Not found")
        end
      end

      def list(message)
        message.reply(aliases, code: true)
      end

      def resolve(message)
        from = message.body.gsub(prefix, "")
        if aliased = table[from]
          robot.receive(
            message.original.merge(
              body: "#{message.body[prefix]}#{aliased}"
            )
          )
          true
        else
          false
        end
      end

      private

      def table
        robot.brain.data[NAMESPACE] ||= {}
      end

      def aliases
        if table.empty?
          "No alias registered"
        else
          table.map {|from, to| "#{from} -> #{to}" }.join("\n")
        end
      end

      def prefix
        Ruboty::Action.prefix_pattern(robot.name)
      end
    end
  end
end
