{pkgs}: {
  channel = "stable-24.05";
  packages = [
    pkgs.nodejs_20
    pkgs.gnupg
    pkgs.openssh
  ];
  idx.extensions = [
    "angular.ng-template"
    "bradlc.vscode-tailwindcss"
    "dbaeumer.vscode-eslint"
  ];
  idx.previews = {
    previews = {
      web = {
        command = [
          "npm"
          "run"
          "start"
          "--"
          "--port"
          "$PORT"
          "--host"
          "0.0.0.0"
          "--disable-host-check"
        ];
        manager = "web";
      };
    };
  };
}