function conversion_launcher(project_dir)
    %% generates the `classdef` .m-files in the subdirectory
    % of each .mlapp-file called `mfiles` 
    % 
    % :input: no input 
    % :returns: void
    % 
    % .. warning:: ANY CHANGE IN THIS AUTOMATICALLY CREATED FUNCTION WILL BE LOST
    %              a) RATHER APPEND YOUR CODE TO :func:`conversion_func_generator` 
    %              b) OR WRITE YOUR OWN FUNCTIONS AND APPEND THEM TO THE FLOW
    % 
    % .. see also:: :ref:`conversion_func_generator() <conversion_func_generator>`_ 
    % 
     
    
    if nargin == 0
        project_dir = pwd();
    end
    
    mlapp_to_m(fullfile(project_dir, 'firstplugin', 'calculator.mlapp'), 'plugin');
    mlapp_to_m(fullfile(project_dir, 'firstplugin', 'redbutton.mlapp'), 'plugin');
    mlapp_to_m(fullfile(project_dir, 'popups', 'popup_about.mlapp'), 'popup');
    mlapp_to_m(fullfile(project_dir, 'popups', 'popup_settings.mlapp'), 'popup');
    mlapp_to_m(fullfile(project_dir, 'host', 'host_app.mlapp'), 'host');
end
