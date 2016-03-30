require 'xmlsimple'
class SearchController < ApplicationController
  def show
    xml = HTTP.get("http://www.boardgamegeek.com/xmlapi/search?search=#{params[:id]}").to_s
    search_results = XmlSimple.xml_in(xml, { 'KeyAttr' => 'name' })
    id = search_results['boardgame'].first['objectid']
    json = HTTP.get("https://bgg-json.azurewebsites.net/thing/#{id}").to_s
    boardgame = JSON.parse(json)

    game = Game.new({gameId: boardgame['gameId'],
                     name: boardgame['name'],
                     image:  boardgame['image'],
                     description:  boardgame['description'],
                     minPlayers:  boardgame['minPlayers'],
                     maxPlayers: boardgame['maxPlayers']
                })

    render partial: "/games/thumbnail", locals: {game: game}, layout: false

  end
end

