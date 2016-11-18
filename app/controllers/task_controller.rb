class TaskController < ApplicationController
    
    def inicio
        
    end
    
    
    def exercicio
        @id = params[:id]
         @img = params[:ime]
        
        
    end
end
