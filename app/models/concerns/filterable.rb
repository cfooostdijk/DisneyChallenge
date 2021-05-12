module Filterable
  extend ActiveSupport::Concern

  module ClassMethods
    def filter_by_age(age)
      where('age > ?', age)
    end

    def filter_by_weight(weight)
      where('weight > ?', weight)
    end

    # def filter_by_films(filmography)
    #   where('filmography LIKE ?', "%#{filmography}%")
    # end

    def search_by_name(search)
      where('name LIKE ?', "%#{search}%")
    end

    def search_by_title(search)
      where('title LIKE ?', "%#{search}%")
    end

    # def filter_by_genre(genre)
    #   where('genre LIKE ?', "%#{genre}%")
    # end

    def order_by_date_desc(date)
      order(date: :desc)
    end

    def order_by_date_asc(date)
      order(date: :asc)
    end

  end
end