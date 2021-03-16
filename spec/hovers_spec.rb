describe 'Mouse hover', :hovers do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'Quando passo o mouse sobre o blade' do
        card = find('img[alt*=Blade]') #*contem a palavra Blade
        card.hover
        
        expect(page).to have_content 'Nome: Blade'
    end

    it 'Quando passo o mouse sobre o Pantera Negra' do
        card = find('img[alt^=Pantera]') #^contem palavra Pantera no inicio
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'Quando passo o mouse sobre o Homem aranha' do
        card = find('img[alt$=Aranha]') #$contem palavra aranha no final
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

    after(:each) do
        sleep 0.5
    end
end