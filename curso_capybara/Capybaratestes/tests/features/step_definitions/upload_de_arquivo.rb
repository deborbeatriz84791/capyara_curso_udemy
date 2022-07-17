
Quando('eu faco um ulpoad de arquivo') do
  visit '/outros/uploaddearquivos'
  #attach_file('upload', 'C:\Capybaratestes\tests\features\download.jpg', make_visible: true)


 @foto = File.join(Dir.pwd, 'features\download.jpg') 

  attach_file('upload', @foto, make_visible: true)
  sleep (10)
  
  
  end