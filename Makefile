namespaces:
	kubectl apply -f 00-namespace.yaml 

apps:
	kubectl apply -f 01-management-ui.yaml 
	kubectl apply -f 02-backend.yaml 
	kubectl apply -f 03-frontend.yaml 
	kubectl apply -f 04-client.yaml 

demo1:
	kubectl delete -f 02-backend.yaml

demo2:
	kubectl apply -f 02-backend.yaml

clean:
	kubectl delete ns client stars management-ui