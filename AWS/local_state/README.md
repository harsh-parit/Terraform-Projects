# Creation of EC2 instance using Terraform

* This instance is created in us-west-2

Note: Do make sure AWS CLI is configured.
```
aws configure
```

# Usage:
**Step 1: clone reposistory to local**
```
git clone <url>
```

**Step 2: locate repo in terminal**
```
ls Terraform-Projects
```

**Step 3: change directory to repo**
```
cd /Terraform-Projects/local_state
```

**Step 4: Initialize terraform**
```
terraform init
```
**Step 5: Plan**
```
terraform plan
```

**Step 6: Apply**
```
terraform apply
```
Enter a value: yes
