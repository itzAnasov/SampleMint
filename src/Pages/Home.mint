component Pages.Home {
  connect Ui exposing { mobile, darkMode }
  style contentext {
    font-family: Nunito;
    font-weight: bold;
    font-size: 24px;
    text-align: center;
  }

  fun render: Html {
    <>
      <Ui.Box fitContent={true}>

        <Ui.Layout.Centered>

          <div::contentext id="typewriter"></div>

        </Ui.Layout.Centered>
        
      </Ui.Box>

      <script>
        <{"
        var typewriter = new Typewriter('#typewriter', {
          loop: true,
          delay: 75,
        });

        typewriter
          .pauseFor(2000)
          .typeString('Hi there.')
          .pauseFor(1000)
          .typeString('<br/>This is my <strong style=\"color: #FF9F23\">javascr</strong>')
          .pauseFor(600)
          .deleteChars(7)
          .typeString('<a href=\"//mint-lang.com\"><strong style=\"color: #27AE60;\">Mint</strong></a> Website With<br/><a href=\"//ui.mint-lang.com\"><strong style=\"color: #27AE60;\">Mint UI</strong></a> Components.')
          .pauseFor(1500)
          .start();
        "}>
      </script>
    </>
  }
}