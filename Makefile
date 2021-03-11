executarJupyter:
	# Lembrar apenas de ativar e desativar o ambiente virtual
	# source AmbienteCDD/bin/activate
	jupyter-notebook
	# deactivate
instalarDependenciasVirtualenv:
	sudo apt-get update
	sudo apt-get install python3-venv
	sudo apt-get install python3-tk
criarAmbienteVirtualenv:
	python3 -m venv AmbienteCDD
	AmbienteCDD/bin/pip3 install --upgrade pip
	AmbienteCDD/bin/pip3 install -r requirements.txt
	clear
	echo "Pacotes instalados:"
	AmbienteCDD/bin/pip3 freeze
atualizarAmbienteVirtualenv:
	AmbienteCDD/bin/pip3 install --upgrade pip
	AmbienteCDD/bin/pip3 install -r requirements.txt
removerAmbienteVirtualenv:
	rm -r AmbienteCDD/
temaMonokaiJupyter:
	jt -t monokai -f fira -fs 11 -nf ptsans -nfs 13 -N -kl -cursw 2 -cursc r -cellw 95% -T
	# Documentação: https://github.com/dunovank/jupyter-themes
	# Opções de temas:
	# onedork
	# grade3
	# oceans16
	# chesterish
	# monokai
	# solarizedl
	# solarizedd