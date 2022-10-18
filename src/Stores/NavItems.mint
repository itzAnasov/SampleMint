/* A store for the navigation items used on the site. */
store NavItems {

  const HOME =
    Ui.NavItem::Link(
      iconBefore = Ui.Icons:HOME,
      iconAfter = <></>,
      label = "Home",
      target = "",
      href = "/")

  const GITHUB =
    Ui.NavItem::Link(
      iconBefore = Ui.Icons:MARK_GITHUB,
      iconAfter = <></>,
      href = "https://github.com/#{@GITHUB}",
      target = "_blank",
      label = "Github")

  const DISCORD =
    Ui.NavItem::Link(
      iconBefore = @svg(../../assets/images/discord-icon.svg),
      iconAfter = <></>,
      href = "https://discordapp.com/users/#{@DISCORD}",
      label = "Discord",
      target = "_blank")

  const TELEGRAM =
    Ui.NavItem::Link(
      iconBefore = @svg(../../assets/images/telegram-icon.svg),
      iconAfter = <></>,
      href = "https://t.me/#{@TELEGRAM}",
      label = "Telegram",
      target = "_blank")

}
