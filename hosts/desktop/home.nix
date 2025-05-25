{ config, pkgs, ... }: {
	home = {
		username = "anton";
		homeDirectory = "/home/anton";
		stateVersion = "24.11";
	};
        
	nixpkgs = {
	  config = {
	    allowUnfree = true;
	  };
	};

	imports = [
		../../hm
	]; 
}
