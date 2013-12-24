# Container

Please stop using singletons and globals!

# Usage

```
class Widget
  def print
    puts "Widget with name: #{container[:name]}"
  end
end

class SubWidget
  def print
    puts "\tSub with name: #{container[:name]}"
  end
end

first_container = Container.new({
  name: "first one"
})

second_container = Container.new({
  name: "second one"
})

first_container.inject(Widget.new, as: "container").print
  -> 'Widget with name: first one\n\tSub with name: first_one'

second_container.inject(Widget.new, as: "container").print
  -> 'Widget with name: second one\n\tSub with name: second_one'
```

