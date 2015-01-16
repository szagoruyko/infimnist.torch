package = "infimnist"
version = "1.0-0"

source = {
   url = "git://github.com/szagoruyko/infimnist.torch",
   tag = "master"
}

description = {
   summary = "InfiMNIST ffi bindings",
   detailed = [[
MNIST dataset with elastic deformations by Leon Bottou et al.
   ]],
   homepage = "https://github.com/szagoruyko/infimnist.torch",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build;
cd build;
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)"; 
$(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}
