{ pkgs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "Porten";

  # https://devenv.sh/packages/
  packages = [ pkgs.git ];

  difftastic.enable = true;


  # https://devenv.sh/scripts/
  scripts.hello.exec = "echo hello from $GREET";

  enterShell = ''
    hello
    git --version
  '';

  # https://devenv.sh/languages/
  # languages.nix.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;
  #


  languages.go.enable = true;

  pre-commit.hooks.gofmt.enable = true;
  pre-commit.hooks.gotest.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
