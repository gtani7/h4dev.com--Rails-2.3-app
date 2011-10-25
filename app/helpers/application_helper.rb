# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def set_form_focus
    javascript_tag("Event.observe(window, 'load', function() {
    var firstForm = $A(document.getElementsByTagName('form'))[0];
    Form.focusFirstElement(firstForm);
    });")
  end

  def set_focus_to_id(id)
    javascript_tag("$('#{id}').focus()");
  end
  
end
