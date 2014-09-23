class ForSelect < ActiveRecord::Base


	# def self.grouped_options(forSelect)
	# 	last_grp = []
	# 	this_grp = []
	# 	valText = []
	# 	grouped_options = []

	# 	forSelect.each_with_index do |e, i|
	# 		# byebug
	# 		this_grp = [e.grouper]

	# 		if last_grp == this_grp        
	# 			this_valText = [e.value, e.text]
	# 			valText.push this_valText

	# 			# If last grouper has more than one option
	# 			if forSelect.count == i+1
	# 				grouped_array = last_grp.push valText
	# 				grouped_options.push grouped_array
	# 			end

	# 		elsif (last_grp != this_grp)
	# 			if i > 0
	# 				grouped_array = last_grp.push valText
	# 				grouped_options.push grouped_array
	# 				valText = []
	# 			end

	# 			this_valText = [e.value, e.text]
	# 			valText.push this_valText

	# 			# If last grouper has only one option
	# 			if forSelect.count == i+1
	# 				grouped_array = this_grp.push valText
	# 				grouped_options.push grouped_array
	# 			end
	# 		end

	# 		last_grp = this_grp
	# 	end

	# 	return grouped_options
	# end
end
