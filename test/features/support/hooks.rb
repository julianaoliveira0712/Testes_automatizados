 #World(Helper)

After '@deslogarUsuario' do 
    @page_user.deslogarUsuario
end 

=begin
After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/','_')
    scenario_name = scenario.name.delete(',','')
    scenario_name = scenario.name.delete('(','')
    scenario_name = scenario.name.delete(')','')
    scenario_name = scenario.name.delete('#','')

    if scenario.failed?
        take_screenshot(scenario_name.downcase!, 'failed')
    else
        take_screenshot(scenario_name.downcase!, 'passed')
    end
end
=end


