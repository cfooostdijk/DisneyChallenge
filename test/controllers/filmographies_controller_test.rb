# frozen_string_literal: true

require 'test_helper'

class FilmographiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filmography = filmographies(:one)
  end

  test 'should get index' do
    get filmographies_url, as: :json
    assert_response :success
  end

  test 'should create filmography' do
    assert_difference('Filmography.count') do
      post filmographies_url,
           params: { filmography: { character_id: @filmography.character_id, date: @filmography.date, genre_id: @filmography.genre_id, stars: @filmography.stars, title: @filmography.title } }, as: :json
    end

    assert_response 201
  end

  test 'should show filmography' do
    get filmography_url(@filmography), as: :json
    assert_response :success
  end

  test 'should update filmography' do
    patch filmography_url(@filmography),
          params: { filmography: { character_id: @filmography.character_id, date: @filmography.date, genre_id: @filmography.genre_id, stars: @filmography.stars, title: @filmography.title } }, as: :json
    assert_response 200
  end

  test 'should destroy filmography' do
    assert_difference('Filmography.count', -1) do
      delete filmography_url(@filmography), as: :json
    end

    assert_response 204
  end
end
