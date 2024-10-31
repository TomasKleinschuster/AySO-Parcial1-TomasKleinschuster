sudo groupadd grupoprogramadores
sudo groupadd grupotester
sudo groupadd grupoanalistas
sudo groupadd grupodisenadores
sudo useradd -m -s /bin/bash -G grupoprogramadores programadores
sudo useradd -m -s /bin/bash -G grupotester tester
sudo useradd -m -s /bin/bash -G grupoanalistas analistas
sudo useradd -m -s /bin/bash -G grupodisenadores disenadores
sudo chown -R programadores:grupoprogramadores /home/vagrant/parcial1/Examenes-UTN/alumno_1
sudo chown -R tester:grupotester /home/vagrant/parcial1/Examenes-UTN/alumno_2
sudo chown -R analistas:grupoanalistas /home/vagrant/parcial1/Examenes-UTN/alumno_3
sudo chown -R disenadores:grupodisenadores /home/vagrant/parcial1/Examenes-UTN/profesores
sudo chmod -R 750 /home/vagrant/parcial1/Examenes-UTN/alumno_1
sudo chmod -R 760 /home/vagrant/parcial1/Examenes-UTN/alumno_2
sudo chmod -R 700 /home/vagrant/parcial1/Examenes-UTN/alumno_3
sudo chmod -R 750 /home/vagrant/parcial1/Examenes-UTN/profesores
sudo su -c "whoami > /home/vagrant/parcial1/Examenes-UTN/alumno_1/validar.txt" programadores
sudo su -c "whoami > /home/vagrant/parcial1/Examenes-UTN/alumno_2/validar.txt" tester
sudo su -c "whoami > /home/vagrant/parcial1/Examenes-UTN/alumno_3/validar.txt" analistas
sudo su -c "whoami > /home/vagrant/parcial1/Examenes-UTN/profesores/validar.txt" disenadores
sudo grep -R alumno /home/vagrant/parcial1/Examenes-UTN/
