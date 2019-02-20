

skills = YAML.load(File.read('db/data/skills.yaml'))
skills.each do |skill|
  children = skill['children'] || []
  name = skill['name']
  abrev = skill['abrev']
  category = skill['category'] || false
  s = Skill.create!(name: name, abrev: abrev, category: category)
  children.each do |child|
    Skill.create!(name: child, parent_id: s.id)
  end
end
