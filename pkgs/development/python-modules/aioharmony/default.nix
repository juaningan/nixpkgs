{ lib
, buildPythonPackage
, fetchPypi
, slixmpp, async-timeout, aiohttp
}:

buildPythonPackage rec {
  pname = "aioharmony";
  version = "0.2.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0f7mywlfxq7z6hf9a5bzi9axv8f6m8wyfahxbax7wkkffwxnx3wc";
  };

  propagatedBuildInputs = [
    slixmpp async-timeout aiohttp
  ];

  doCheck = false;

  meta = {
    homepage = https://github.com/ehendrix23/aioharmony;
    description = "Asyncio Python library for connecting to and controlling the Logitech Harmony";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ juaningan ];
  };
}
