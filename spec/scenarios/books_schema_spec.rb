describe "Schemas /FakeRestAPI" do
  context "Validar Schemas da FakeRestAPI" do
    it "Valida Schema da rota Books" do
      findBook = Books.new.findGetBook(Helpers::numRandom())
    
    expect(findBook.body).to match_json_schema(:my_schema,strict: true)
      
    end
  end
end
