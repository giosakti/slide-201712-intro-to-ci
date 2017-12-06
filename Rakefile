require "rabbit/task/slide"

# Edit ./config.yaml to customize meta data

spec = nil
Rabbit::Task::Slide.new do |task|
  spec = task.spec
  spec.files += Dir.glob("images/**/*.*")
  # spec.files -= Dir.glob("private/**/*.*")

  # You may include other themes here
  # spec.add_runtime_dependency("rabbit-theme-nyankosakana")
  spec.add_runtime_dependency("rabbit-theme-starqle")
  # spec.add_runtime_dependency("rabbit-theme-yart")
end

desc "Tag #{spec.version}"
task :tag do
  sh("git", "tag", "-a", spec.version.to_s, "-m", "Publish #{spec.version}")
  sh("git", "push", "--tags")
end
