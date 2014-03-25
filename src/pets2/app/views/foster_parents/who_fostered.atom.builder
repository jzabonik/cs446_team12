atom_feed do |feed|
  feed.title "Who adopted"
  
  FosterParent.all.each do |parent|
    feed.entry(parent) do |entry|
      entry.title "Pet ID: #{parent.pet_id}"
      entry.summary type: 'xhtml' do |xhtml|
        xhtml.p "Address #{parent.address}"
      end
      entry.author do |author|
        author.name parent.name
        author.email parent.email
      end
    end
  end
end