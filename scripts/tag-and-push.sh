echo Tagging and Pushing Free5G Containers
echo webui
sudo docker tag free5gc-compose-k8s_free5gc-webui oss.registry/free5gc-compose-k8s_free5gc-webui
sudo docker push oss.registry/free5gc-compose-k8s_free5gc-webui
echo n3iwf
sudo docker tag free5gc-compose-k8s_free5gc-n3iwf oss.registry/free5gc-compose-k8s_free5gc-n3iwf 
sudo docker push oss.registry/free5gc-compose-k8s_free5gc-n3iwf
echo udr
sudo docker tag free5gc-compose-k8s_free5gc-udr oss.registry/free5gc-compose-k8s_free5gc-udr
sudo docker push oss.registry/free5gc-compose-k8s_free5gc-udr  
echo udm
sudo docker tag free5gc-compose-k8s_free5gc-udm oss.registry/free5gc-compose-k8s_free5gc-udm 
sudo docker push oss.registry/free5gc-compose-k8s_free5gc-udm  
echo smf
sudo docker tag free5gc-compose-k8s_free5gc-smf oss.registry/free5gc-compose-k8s_free5gc-smf
sudo docker push oss.registry/free5gc-compose-k8s_free5gc-smf  
echo pcf
sudo docker tag free5gc-compose-k8s_free5gc-pcf oss.registry/free5gc-compose-k8s_free5gc-pcf
sudo docker push oss.registry/free5gc-compose-k8s_free5gc-pcf  
echo nssf
sudo docker tag free5gc-compose-k8s_free5gc-nssf oss.registry/free5gc-compose-k8s_free5gc-nssf
sudo docker push oss.registry/free5gc-compose-k8s_free5gc-nssf 
echo ausf
sudo docker tag free5gc-compose-k8s_free5gc-ausf oss.registry/free5gc-compose-k8s_free5gc-ausf
sudo docker push oss.registry/free5gc-compose-k8s_free5gc-ausf 
echo amf
sudo docker tag free5gc-compose-k8s_free5gc-amf oss.registry/free5gc-compose-k8s_free5gc-amf
sudo docker push oss.registry/free5gc-compose-k8s_free5gc-amf  
echo nrf
sudo docker tag free5gc-compose-k8s_free5gc-nrf oss.registry/free5gc-compose-k8s_free5gc-nrf
sudo docker push oss.registry/free5gc-compose-k8s_free5gc-nrf  
echo upf-1
sudo docker tag free5gc-compose-k8s_free5gc-upf-1 oss.registry/free5gc-compose-k8s_free5gc-upf-1
sudo docker push oss.registry/free5gc-compose-k8s_free5gc-upf-1
echo upf-2
sudo docker tag free5gc-compose-k8s_free5gc-upf-2 oss.registry/free5gc-compose-k8s_free5gc-upf-2
sudo docker push oss.registry/free5gc-compose-k8s_free5gc-upf-2
echo upf-b
sudo docker tag free5gc-compose-k8s_free5gc-upf-b oss.registry/free5gc-compose-k8s_free5gc-upf-b
sudo docker push oss.registry/free5gc-compose-k8s_free5gc-upf-b
echo base
sudo docker tag free5gc/base oss.registry/free5gc:base
sudo docker push oss.registry/free5gc:base
echo mongo
sudo docker tag mongo oss.registry/mongo
sudo docker push oss.registry/mongo                
echo --- VERIFYING ---
OUTPUT=`curl oss.registry/v2/_catalog`
echo "$OUTPUT"
echo ALL DONE!

