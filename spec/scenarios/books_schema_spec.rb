describe "Schemas /FakeRestAPI" do
  context "Validar Schemas da FakeRestAPI" do
    it "Valida Schema da rota Books" do
      findBook = Books.new.findGetBook(Helpers::numRandom())
      
      expect(JSON.parse(findBook.body)).to include('id','title','description','pageCount','excerpt','publishDate')
      expect(findBook.body).to match_json_schema("books_schema")
      
    end
  end
end
