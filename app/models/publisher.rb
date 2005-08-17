class Publisher < ActiveRecord::Base
    has_many :media, :foreign_key=>'publisherid', :order=>'publicationdate'
    @scaffold_select_order = 'name'

    def albums
        Album.find(:all, :include=>:media, :conditions=>['media.publisherid = ?', id], :order=>'sortname')
    end
end
