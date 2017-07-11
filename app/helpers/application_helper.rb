module ApplicationHelper
	def active_class (link_path)
		(current_page?(subdomain: 'blog') && link_path == '')  || current_page?(link_path) ? "current-menu-parent" : ""
	end
end
