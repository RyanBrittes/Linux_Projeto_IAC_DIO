#!/bin/bash

echo "---------------------------------------------------------------------------------------------"
echo "Iniciando o Script...."

mkdir /publico /adm /ven /sec
 
groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

useradd carlos -m -c"Carlos_ADM" -s /bin/bash -G GRP_ADM 
useradd maria -m -c"Maria_ADM" -s /bin/bash -G GRP_ADM 
useradd joao -m -c"Joao_ADM" -s /bin/bash -G GRP_ADM
 
useradd debora -m -c"Debora_VEN" -s /bin/bash -G GRP_VEN
useradd sebastiana -m -c"Sebastiana_VEN" -s /bin/bash -G GRP_VEN
useradd roberto -m -c"Roberto_VEN" -s /bin/bash -G GRP_VEN

useradd josefina -m -c"Josefina_SEC" -s /bin/bash -G GRP_SEC
useradd amanda -m -c"Amanda_SEC" -s /bin/bash -G GRP_SEC
useradd rogerio -m -c"Rogerio_SEC" -s /bin/bash -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Finalizando....."
echo "---------------------------------------------------------------------------------------------"

