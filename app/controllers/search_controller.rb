require 'xmlsimple'
require 'pry'

class SearchController < ApplicationController
  def show
    xml = HTTP.get("http://www.boardgamegeek.com/xmlapi/search?search=#{params[:id]}").to_s
    search_results = XmlSimple.xml_in(xml, { 'KeyAttr' => 'name' })

    if search_results != nil
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
      if game.save
        render partial: "/games/thumbnail", locals: {game: game}, layout: false
      else
        render nothing: true, status: 500
      end
    else
      render nothing: true, :status => 404
    end
  end
end

