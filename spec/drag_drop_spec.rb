describe 'Drag and Drop', :drop do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end

    it 'Homem aranha pertence ao time do stark' do

        stark = find('.team-stark .column')
        cap = find('.team-cap .column')

        spiderman = find('img[alt$=Aranha]')
        spiderman.drag_to stark

        sleep 5

        expect(stark).to have_css 'img[alt$=Aranha]'
        expect(cap).not_to have_css 'img[alt$=Aranha]'
    end

end