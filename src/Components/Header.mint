component Header {
  connect Ui exposing { mobile, darkMode, toggleDarkMode }

  get darkModeToggle : Ui.NavItem {
    if (mobile) {
      try {
        label =
          if (darkMode) {
            "Light Mode"
          } else {
            "Dark Mode"
          }

        iconBefore =
          if (darkMode) {
            Ui.Icons:SUN
          } else {
            Ui.Icons:MOON
          }

        Ui.NavItem::Item(
          action = (event : Html.Event) { toggleDarkMode() },
          iconBefore = iconBefore,
          iconAfter = <></>,
          label = label)
      }
    } else {
      Ui.NavItem::Html(<Ui.DarkModeToggle size={Ui.Size::Px(16)}/>)
    }
  }

  fun render : Html {
    <Ui.Header
      gap={Ui.Size::Em(1)}
      items=[
        NavItems:TELEGRAM,
        NavItems:DISCORD,
        NavItems:GITHUB,
        Ui.NavItem::Divider,
        darkModeToggle
      ]
      brand={
        <Logo/>
      }/>
  }
}
