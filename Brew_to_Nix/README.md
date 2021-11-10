## Moving from Homebrew to Nix

nix:brew-to-nix is a simple interactive function to go through installed Homebrew packages and allow you to replace them with their Nix equivalents. Only loops through the “leaves” - i.e. Homebrew packages that do not have any dependents, so it will not loop through everything. You may need to run it a few times to fully clean up.


```nix
fn brew-to-nix {
  brew leaves | each [pkg]{
    echo (styled "Package "$pkg green)
    brew info $pkg
    loop = $true
    while $loop {
      loop = $false
      print (styled $pkg": [R]emove/[Q]uery nix/[K]eep/Remove and [I]nstall with nix? " yellow)
      resp = (util:readline </dev/tty)
      if (eq $resp "r") {
        brew uninstall --force $pkg
      } elif (eq $resp "q") {
        _ = ?(search --description '.*'$pkg'.*')
        loop = $true
      } elif (eq $resp "i") {
        install $pkg
        brew uninstall --force $pkg
      }
    }
  }
}
