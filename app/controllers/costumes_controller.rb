class CostumesController < ApplicationController
def bridalcollection
    @costumes=Costume.all.select { |costume| costume.category == "Bridal Collection" }

end
def partywear
    @costumes=Costume.all.select { |costume| costume.category == "Party Wear" }

end
def westerndresses
    @costumes=Costume.all.select { |costume| costume.category == "Western Dresses" }

end
def fancydresses
    @costumes=Costume.all.select { |costume| costume.category == "Fancy Dresses" }

end
def winterwear
    @costumes=Costume.all.select { |costume| costume.category == "Winter Wear" }

end

end