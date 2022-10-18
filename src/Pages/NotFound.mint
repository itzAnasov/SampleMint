component Pages.NotFound {
  connect Ui exposing { mobile }

  style base {
    place-content: center;
    display: grid;

    if (mobile) {
      min-height: auto;
      padding: 2em 0;
    } else {
      min-height: 80vh;
    }
  }

  style hr {
    margin-top: 1em;
    border: 0;
    border-top: 0.1825em solid var(--content-border);
  }

  fun render: Html {
    <Ui.Box fitContent={true}>

      <Ui.Layout.Centered>

        <Ui.IllustratedMessage
          title=<{ "404 NOT FOUND!" }>
          image={
            <Ui.Icon
              icon={@svg(../../assets/images/map.svg)}
              size={Ui.Size::Em(10)}/>
          }
          />

      </Ui.Layout.Centered>

    </Ui.Box>
  }
}
