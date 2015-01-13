InfiMnist.torch
===============

Torch7 ffi bindings for InfiMnist dataset, MNIST dataset with elastic deformations http://leon.bottou.org/projects/infimnist

To use it please download the archive from the link above and unpack somewhere. Then in torch do

```lua
require 'infimnist'
provider = infimnist.InfiMnist('data') -- put your path to data folder here
sample, label = provider:getSample(34)
```

Samples from 0 to 9999 are test digits, from 10000 to 69999 are train and above - elastic deformations.
So to generate a deformed sample do

```lua
train_sample, train_label = provider:getSample(math.random(70000,1e+9))
```
