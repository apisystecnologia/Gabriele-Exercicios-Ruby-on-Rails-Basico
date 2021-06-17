module ProdutosHelper
	def css_for(index)
		if (index.even?)
        	"normal-row"
        else
            "gray-row"
        end
    end
end
