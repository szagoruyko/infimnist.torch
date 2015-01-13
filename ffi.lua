local ffi = require 'ffi'

ffi.cdef[[
typedef struct infimnist_s infimnist_t;

infimnist_t *infimnist_create(const char *datadir);

void infimnist_destroy(infimnist_t*);

int infimnist_get_label(infimnist_t*, long index);

const unsigned char *infimnist_get_pattern(infimnist_t*, long index);

void infimnist_cache_clear(infimnist_t*);
]]

infimnist.C = ffi.load './build/libinfimnist.so'
