require 'test_helper'

class ComicChaptersControllerTest < ActionController::TestCase
  setup do
    @comic_chapter = comic_chapters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comic_chapters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comic_chapter" do
    assert_difference('ComicChapter.count') do
      post :create, comic_chapter: { number: @comic_chapter.number, subtitle: @comic_chapter.subtitle, total_point: @comic_chapter.total_point }
    end

    assert_redirected_to comic_chapter_path(assigns(:comic_chapter))
  end

  test "should show comic_chapter" do
    get :show, id: @comic_chapter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comic_chapter
    assert_response :success
  end

  test "should update comic_chapter" do
    patch :update, id: @comic_chapter, comic_chapter: { number: @comic_chapter.number, subtitle: @comic_chapter.subtitle, total_point: @comic_chapter.total_point }
    assert_redirected_to comic_chapter_path(assigns(:comic_chapter))
  end

  test "should destroy comic_chapter" do
    assert_difference('ComicChapter.count', -1) do
      delete :destroy, id: @comic_chapter
    end

    assert_redirected_to comic_chapters_path
  end
end
