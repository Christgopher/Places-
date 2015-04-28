class Place
  @@all = []
  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do
    @description
  end

  define_singleton_method(:all) do
    @@all
  end

  define_method(:save) do
    @@all.push(self)
  end
  define_singleton_method(:clear) do
    @@all = []
  end

end
