class TaskController < ApplicationController

    def exercicio
	id = ('A'..'G').to_a.sample
	@img = id

        
        
    end
end
