$('#board').html("<%= j render :partial => 'courses/revision', :locals => { :course => @course }  %>");
