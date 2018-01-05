# README

`master` branch allows to reproduce the following [bug](https://github.com/trailblazer/trailblazer-operation/issues/22):

```
irb(main):001:0> BA::Test::Action.()
Method is invoked123!
=> <Result:true <Skill {} {"params"=>{}} {"pipetree"=>[>operation.new,>run_method!]}> >
irb(main):002:0> reload!
Reloading...
=> true
irb(main):003:0> BA::Test::Action.()
Method is invoked123!
Method is invoked123!
=> <Result:true <Skill {} {"params"=>{}} {"pipetree"=>[>operation.new,>run_method!,>run_method!]}> >
irb(main):004:0> reload!
Reloading...
=> true
irb(main):005:0> BA::Test::Action.()
Method is invoked123!
Method is invoked123!
Method is invoked123!
=> <Result:true <Skill {} {"params"=>{}} {"pipetree"=>[>operation.new,>run_method!,>run_method!,>run_method!]}> >
```

`fix-issue` branch contains forked `trailblazer-operation` repo which fixes that

```
irb(main):001:0> BA::Test::Action.()
Method is invoked123!
=> <Result:true <Skill {} {"params"=>{}} {"pipetree"=>[>operation.new,>run_method!]}> >
irb(main):002:0> reload!
Reloading...
=> true
irb(main):003:0> BA::Test::Action.()
Method is invoked123!
=> <Result:true <Skill {} {"params"=>{}} {"pipetree"=>[>operation.new,>run_method!]}> >
irb(main):004:0> reload!
Reloading...
=> true
irb(main):005:0> BA::Test::Action.()
Method is invoked123!
=> <Result:true <Skill {} {"params"=>{}} {"pipetree"=>[>operation.new,>run_method!]}> >

```
