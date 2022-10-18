component Main {
  connect Application exposing { page }

  get content {
    case (page) {
      Page::Home => <Pages.Home/>
      Page::NotFound => <Pages.NotFound/>
      Page::Initial => <{  }>
    }
  }

  fun render : Html {
    <Ui.Theme.Root fontConfiguration={Ui:DEFAULT_FONT_CONFIGURATION} tokens={Ui:DEFAULT_TOKENS}>
      <Ui.Layout.Website maxWidth="100vw" header={<Header/>} content={content} footer={<></>}/>
    </Ui.Theme.Root>
  }
}
