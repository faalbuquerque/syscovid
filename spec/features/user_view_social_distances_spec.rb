require 'rails_helper'

feature 'view social distances' do
  context 'user' do
    it 'successfully' do
      # Arrange
    
      # Act
      visit root_path
      click_on I18n.t(:new_user).capitalize
      
      # Assert
      expect(page).to have_content(I18n.t(:how_many_residents).capitalize)
      expect(page).to have_content(I18n.t(:residence_type).capitalize)
      expect(page).to have_content(I18n.t(:bedrooms))
      expect(page).to have_content(I18n.t(:many_contacts).capitalize)
      expect(page).to have_content(I18n.t(:been_outdoor).capitalize)
      expect(page).to have_content(I18n.t(:many_times_outdoor).capitalize)
      expect(page).to have_content(I18n.t(:where).capitalize)
      expect(page).to have_content(I18n.t(:supermarket).capitalize)
      expect(page).to have_content(I18n.t(:public_transportation).capitalize)
      expect(page).to have_content(I18n.t(:many_transportations).capitalize)
      expect(page).to have_content(I18n.t(:transport_type).capitalize)
      expect(page).to have_content(I18n.t(:bus).capitalize)
      expect(page).to have_css("input[value='#{I18n.t(:save).capitalize}']")
    end
    it 'cannot be blank' do
      # Arrange
    
      # Act
      visit root_path
      click_on I18n.t(:new_user).capitalize
  
      click_on I18n.t(:save).capitalize

      # Assert
      expect(page).to have_content(I18n.t(:blank))
    end
  end
end
