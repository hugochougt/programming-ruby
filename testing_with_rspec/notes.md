### prerequirement

[Basic Testing Setup With RSpec and FactoryGirl](http://blog.jasonkim.ca/blog/2014/02/04/basic-testing-setup-with-rspec-and-factorygirl/)

### charpter 1

```shell
rpsec --init
```

spec/lib/zombie_spec.rb <<== <name_of_spec>_spec.rb

```ruby
zombie.name.should == "Ash"

zombie.alive.should == false  # zombie.alive.should be_false

zombie.rotting.should == true # zombie.rotting.should be_true

zombie.height.should > 5      # zombie.height.should be > 5
```

### charpter 2

```ruby
zombie.weapons.count.should == 2 # not quite right

zombie.should have(2).weapons    # RSpec way

# these will work too
# have(n)
# have_at_least(n)
# have_at_most(n)
```
