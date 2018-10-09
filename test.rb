def save_content(name, content)
  File.open("pages/#name}.txt", "w") do |file|
    file.print(content)
  end
end


puts save_content("DOgname", "Dog age ")


# 
     # post '/puppy' do
     #  @puppy = Puppy.new(params[:name], params[:breed], params[:age])
     #  erb :display_puppy
    # end
