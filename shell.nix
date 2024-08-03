with import <nixpkgs> {};
  mkShell {
    packages = [
      cargo
      rustc
      rust-analyzer-unwrapped
      rustfmt

      nodejs
      yarn
    ];
    env.RUST_SRC_PATH = "${rustPlatform.rustLibSrc}";
  }
