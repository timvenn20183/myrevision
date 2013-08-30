$('#board').html("<%= j render :partial => 'courses/revision', :locals => { :course => @course, :percentage_answered => @percentage_answered, :questions_answered => @questions_answered }  %>");
