component Logo {
    style title {
        font-family: Nunito;
        font-weight: bold;
        font-size: 23px;
    }

    fun render : Html {
        <Ui.Container gap={Ui.Size::Em(0.8)}>
            <Ui.Image
                alt="Thats Me."
                height={Ui.Size::Px(32)}
                width={Ui.Size::Px(32)}
                borderRadius="10em"
                objectPosition="center"
                objectFit="cover"
                draggable={false}
                fullWidth={false}
                src={"https://avatars.githubusercontent.com/u/59410395?v=4"}
                />
            <p::title>"Anas Ben Rahim."</p>
        </Ui.Container>
    }
}