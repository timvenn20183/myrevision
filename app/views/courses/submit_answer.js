$('#result').html("<%= j render :partial => 'courses/submit_answer', :locals => {:answer => @answer} %>");
