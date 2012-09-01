#
# Cookbook Name:: bigv
# Recipe:: default
#
# Copyright 2012, Andy Gale
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.#

apt_repository "client.bigv.io" do
  uri "http://client.bigv.io/apt/" + node['lsb']['codename']
  distribution "./"
  key "bigv.packages.key"
end

include_recipe "apt"

package "bigv" do
  action :install
end
