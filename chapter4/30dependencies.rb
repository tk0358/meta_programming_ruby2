module Loadable
  def self.exclude_from(base)
    base.class_eval { define_method(:load, Kernel.instance_method(:load)) }
  end

  #...
end