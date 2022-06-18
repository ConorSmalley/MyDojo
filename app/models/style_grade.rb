class StyleGrade < ApplicationRecord
    def nicename
        return Style.find(style_id).name + " " + Grade.find(grade_id).name
      end
end
