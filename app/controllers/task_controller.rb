class TaskController < ApplicationController

    def exercicio
    	id = ('A'..'G').to_a.sample
    	@img = id
    end
        
    def audio
        id = ('A'..'G').to_a.sample
    	@aud = id
    end

end
