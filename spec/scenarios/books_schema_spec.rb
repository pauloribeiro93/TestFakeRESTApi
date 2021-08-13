describe "Schemas /FakeRestAPI" do
  context "Validar Schemas da FakeRestAPI" do
    it "Valida Schema da rota Books" do
      findBook = Books.new.findGetBook(Helpers::numRandom())
      expect(findBook).to match_json_schema("books_schema")
    end
  end
end
