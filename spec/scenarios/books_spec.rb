describe "FakeRESTApi Api​/v1​/Books" do
  context "Validar rota Books da FakeRestAPI" do
    it "GET/api​/v1​/Books" do
      getBooks = Books.new.getBook()
      expect((getBooks).length).to eql(200)
      expect(getBooks.code).to eql(200)
    end

    it "POST/api/v1/Books" do
      postBook = Books.new.postBook()
      expect(postBook).not_to be_empty

      expect(postBook["pageCount"]).to eql(1200)
      expect(postBook["id"]).to eql(0)
      expect(postBook.code).to eql(200)
    end

    it "GET/api/v1/Books/{id}" do
      findBook = Books.new.findGetBook(Helpers::numRandom())
      expect(findBook).not_to be_empty
      expect(findBook.code).to eql(200)
    end

    it "PUT/api/v1/Books/{id}" do
      alterBook = Books.new.putBook(Helpers::numRandom(), Helpers::numRandom())

      expect(alterBook).not_to be_empty
      expect(alterBook.code).to eql(200)
    end

    it "DELETE/api/v1/Books/{id}" do
      delBook = Books.new.delBook(Helpers::numRandom())

      expect(delBook.headers["content-length"]).to eql("0")
      expect(delBook.headers).not_to be_empty
      expect(delBook.code).to eql(200)
    end
  end
end
