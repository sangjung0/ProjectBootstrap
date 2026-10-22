from %%PACKAGE_NAME%%.main import main


def test_main(capsys):
    main()
    assert capsys.readouterr().out == "%%PROJECT_NAME%%\n"
