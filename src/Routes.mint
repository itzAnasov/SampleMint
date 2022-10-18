routes {
  /SampleMint/ {
    Application.setPage(Page::Home)
  }

  /SampleMint/* {
    Application.setPage(Page::NotFound)
  }
}
