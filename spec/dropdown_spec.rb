describe 'Caixa de opções', :dropdown do

    it 'Item específico simples' do
        # select('Opção', from: 'Elemento')
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3 #temporário
    end

    it 'Item específico com o find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
        sleep 3 # temporário
    end

    it 'Qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 2 # temporário
    end

end