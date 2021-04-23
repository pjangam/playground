-include ./User.mk
-include ../User.mk
-include ~/User.mk


export TF_LOG:=WARN
.PHONY: deploy
deploy: init
	@terraform --version > version.txt
	cat version.txt
	terraform plan -input=false -out tfplan
	terraform apply -auto-approve tfplan

.PHONY: plan
plan: init
	terraform plan -input=false

.PHONY: destroy
destroy: init
	terraform destroy -auto-approve

.PHONY: init
init:
	terraform init -input=false
