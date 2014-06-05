# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
Post.delete_all
Author.delete_all
Static.delete_all

[:categories, :posts, :statics, :authors].each do |table|
  if Rails.env.production?
    ActiveRecord::Base.connection.reset_pk_sequence!(table)
  else
    ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = '#{table}'")
  end
end

Category.create([
  {title: 'Sport'},
  {title: 'Design'},
  {title: 'Politics'}
])


Author.create([
  {
    email: 'test@test.de',
    name: 'Mayer Max',
    job_title: 'Developer'
  },
  {
    email: 'test@test.de',
    name: 'Mico Muster',
    job_title: 'Designer'
  }
])


Post.create([
  
  {headline: "Handgloves are brown over the hill", subheadline: "Duis autem vel eum iriure dolor", content: "Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.

Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
", published: true, published_at: "2014-05-19 13:36:00", category_id: 1, author_id: 2}, 
  
  {headline: "Enzian vasteh middn i moan", subheadline: "Blärrd i aasgem", content: "Koa Buam und hod fei singan Xaver auf der Oim, da gibt’s koa Sünd: Hemad zünftig guad gschmeidig etza Brotzeit allerweil scheans. Hi allerweil Kaiwe nia need kimmt. Blärrd i aasgem, no. Ozapfa sei a geh gwihss Marterl Freibia af: Woaß owe zwoa Heimatland Biawambn oa a liabs Deandl Sauakraud Schdeckalfisch nia! Gwihss no a Maß Wurschtsolod i daad auf gehds beim Schichtl auf’d Schellnsau? Hod hoam schüds nei back mas zwoa is samma gor Wurschtsolod, i hab an.", published: true, published_at: "2014-05-12 13:39:00", category_id: 2, author_id: 1}
  
])


Static.create([
  {
    title: 'Visible on the index page',
    content: 'Lorem ipsum'
  }
])