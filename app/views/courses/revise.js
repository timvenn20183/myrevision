$('#board').html("<%= j render :partial => 'courses/revise', :locals => { :course => @course, :question => @question }  %>");
