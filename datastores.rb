#! /usr/bin/ruby

module Datastores
@datastores = {}

def Datastores.import()
	Dir.glob("datastores/*").sort.each do |p|
		d = path_unmarshal(p)
		d['client'] = Mysql2::Client.new(
			:host => d['host'],
			:username => d['username'],
			:password => d['password'],
			:database => d['database'],
			:port => d['port']
		)

		@datastores[d['name']] = d
	end
end

def Datastores.get(name)
	@datastores[name]
end

end
