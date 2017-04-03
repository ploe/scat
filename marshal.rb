#! /usr/bin/ruby

def path_unmarshal(p)
	struct = nil

	txt = File.read(p)
	begin
			struct = JSON.parse()
	rescue JSON::ParserError => e
			$stderr.puts "json_unmarshal: #{e.class} #{e.message}"
	end

	return struct
end
