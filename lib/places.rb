class Place
  define_method(:initialize) do |description|
    @@all = []
    @description = description
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@all
  end
end
