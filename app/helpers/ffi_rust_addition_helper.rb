require 'ffi'

module FfiRustAdditionHelper
  extend FFI::Library
  ffi_lib Rails.root.join('ext', 'rustapp','target', 'release', 'librustapp.so') # Replace with the actual path

  attach_function :add_two_integers, [:int, :int], :int
end
