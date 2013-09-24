JasmineTest::Application.routes.draw do
  mount JasmineRails::Engine => "/specs" if defined?(JasmineRails)
  root 'application#index'
end
