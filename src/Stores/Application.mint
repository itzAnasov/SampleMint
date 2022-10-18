store Application {

  state page : Page = Page::Initial

  fun setPage (page : Page) : Promise(Never, Void) {
    sequence {
      next { page = page }
    }
  }
}
