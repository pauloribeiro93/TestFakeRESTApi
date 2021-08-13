require "httparty"
require_relative "base_api"

class Books < BaseApi
  def getBook()
    return self.class.get(
             "/Books"
           )
  end

  def findGetBook(id)
    return self.class.get(
             "/Books/#{id}"
           )
  end

  def postBook()
    return self.class.post(
             "/Books",
             headers: {
               "Content-Type": "application/json",
             },
             body: ({
               "id": 0,
               "title": "Vai vai",
               "description": "É o vai vai",
               "pageCount": 1200,
               "excerpt": "Yap",
               "publishDate": "2022-08-09T00:14:20.529Z",
             }).to_json,
           )
  end

  def putBook(pathId, idBody)
    return self.class.put(
             "/Books/#{pathId}",
             headers: {
               "Content-Type": "application/json; v=1.0",
             },
             body: ({
               "id": "#{idBody}",
               "title": "Valor",
               "description": "Valor Put Teste",
               "pageCount": 100,
               "excerpt": "string",
               "publishDate": "2021-08-13T01:06:58.231Z",
             }).to_json,
           )
  end

  def delBook(pathId)
    return self.class.delete(
             "/Books/#{pathId}",
             headers: {
               "accept": "*/*",
             },
           )
  end
end
