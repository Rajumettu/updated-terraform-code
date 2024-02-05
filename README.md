# updated-terraform-code

Task1-- To delete the specific port which is in the public in pre existing infrastructure and that should valid for multiple infrastructure too and also aplicabe for the instances which are running in different environment.
Solution-- Firstly, I have created the security group manually with http, https port are allowed. To do the change in any existing environment, firstly we have to import the existing infrastructure in our statefile. To do this, we have first run the command [terraform import RESOURCE_TYPE.NAME ID], in my case, i have to import the security group, terefore i have used command [terraform import aws_security_group.raju-sg2 sg-0801b367de78b64f8] and now to check the state list [terraform state list]. To check the existing configuration of security group [terraform state show aws_security_group.raju-sg2]. Now have the existing configuration of SG of diffrent environment. Now write the code of SG rule, u want to allow. Like I mentioned in sg.tf.  After that just run the terraform apply --auto-approve.
---------------------------------------------------------

Task2-- we have to check the status of access key of IAM which are already created.
Solution--- I have use data block to get the information about existing IAM roles. I have generated output which will show the status of all the keys which are currently present (active or inactive)
            To get this just use the provider.tf(put the access key and secret key there) and IAM.tf....
            Commands to run-----
            1-- terraform init
            2-- terraform plan
            3-- terraform apply --auto-approve
----------------------------------------------------------------------------------------
