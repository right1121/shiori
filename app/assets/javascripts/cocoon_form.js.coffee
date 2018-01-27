$ ->
  day_count = 1
  $('.nested-form')
    .on 'cocoon:before-insert', (e, task_to_be_added) ->
      task_to_be_added.fadeIn('slow')
      
    .on 'cocoon:after-insert', (e, added_task) ->
      if added_task.hasClass('day_field')
        day_count += 1
        $('.day_form').last().val(day_count)
      if added_task.hasClass('nested-fields')
        added_task.find('.add_fields').click()
      
    .on 'cocoon:before-remove', (e, task_to_be_removed) ->
      if task_to_be_removed.hasClass('day_field')
        day_forms = task_to_be_removed.nextAll().find('.day_form')
        
        for day_form in day_forms
          day_form_val = $(day_form).val() - 1
          $(day_form).val(day_form_val)
          day_count -= 1
      task_to_be_removed.fadeOut('slow')
      
    .on 'cocoon:after-remove', (e, removed_task) ->

