require "env_inquiry/version"

module EnvInquiry

  class Env
    class << self
      def env
        ENV
      end

      # return nil for any class methods not defined
      # same as calling ENV['<missing_key>'] would
      def method_missing(name)
        return nil
      end

      def inquire
        env.each_pair do |k,v|
          name = k.downcase

          # wrap env keys as singleton methods on class.
          # returns bools for 'true', 'false'
          define_singleton_method(name.to_sym) do
            case v.to_s.downcase
              when 'true'
                true
              when 'false'
                false
              else
                v
            end
          end

          # define inspection method (method?)
          # true if value is 'true'
          # false if value is 'false'
          # true if a 'present' value
          define_singleton_method("#{name}?".to_sym) do
            case v.to_s.downcase
              when 'true'
                true
              when 'false'
                false
              else
                v.to_s.strip != ''
            end
          end
        end
      end
    end

    # inquire of the ENV
    self.inquire
  end

end
