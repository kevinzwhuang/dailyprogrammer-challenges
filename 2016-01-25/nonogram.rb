class Nonogram
	def initialize(string)
		@string = string
	end

	def row
		@row = ""
		skip = false
		@string.split("").each do |character|
			if character == "\n"
				@row += "\n"
			elsif character == "*"
				if skip
					@row += " 1"
					skip = false
				elsif @row[-1].to_i > 0
					@row[-1] =  (@row[-1].to_i + 1).to_s
				else
					@row += "1"
				end
			elsif character == " "
				skip = true
			end
		end
		@row
	end
end


triangle = "    *
   **
  * *
 *  *
*****"
tri = Nonogram.new(triangle)
puts tri.row