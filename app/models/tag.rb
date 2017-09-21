class Tag
  include DataMapper::Resource

  has n, :links, through: Resource

  property(:id, Serial)
  property(:name, String)

  def input_tags(link, tags_array)
    tags_array.split(', ').each { |separate_tag| tag = Tag.first_or_create(name: separate_tag)
                                                link.tags << tag
    }
  end

end
