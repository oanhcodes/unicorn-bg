require 'xmlsimple'
require 'pry'

class SearchController < ApplicationController
  def show
    xml = HTTP.get("http://www.boardgamegeek.com/xmlapi/search?search=#{params[:id]}").to_s
    # Rails.logger.info("XML from http://www.boardgamegeek.com/xmlapi/search?search=#{params[:id]}")
    # Rails.logger.info(xml)
    search_results = XmlSimple.xml_in(xml, { 'KeyAttr' => 'name' })
    # binding.pry
    if search_results != nil
      id = search_results['boardgame'].first['objectid']
      json = HTTP.get("https://bgg-json.azurewebsites.net/thing/#{id}").to_s
      # Rails.logger.info("JSON from https://bgg-json.azurewebsites.net/thing/#{id}")
      # Rails.logger.info(json)
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

