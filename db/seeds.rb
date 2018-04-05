
5.times do |project|
  Project.create!(
    title: 'My Project #{project}',
    subtitle: 'An Adonis Bronze production',
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed dolor augue, venenatis non nulla ac, fringilla convallis tortor. Suspendisse porta, metus eu pretium varius, nulla elit accumsan odio, et aliquet diam mi quis nisi. Vivamus imperdiet imperdiet venenatis. Ut pharetra tempor sapien, pulvinar scelerisque sapien tempus nec.'
    )
end
puts "5 projects created."
