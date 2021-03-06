# Deploying an Azure VM with Nginx Plus Or Enterprise using Terraform

Blog --> https://gmusumeci.medium.com/how-to-deploy-a-linux-vm-with-nginx-plus-or-enterprise-in-azure-using-terraform-6f7b5f25b5ab

Update the **source_image_reference** on this section of the **linux-vm-main.tf** file, to configure the Linux distro and version of Nginx.

```
source_image_reference {
    publisher = var.nginx-publisher
    offer     = var.nginx-plus-offer
    sku       = "nginx-plus-ub1804"
    version   = "latest"
  }
```

---

# How to Find Azure Nginx VM Images for Terraform using PowerShell

Login into Azure: 

```
Connect-AzAccount
```

The process starts by defining our Azure region using a variable:

```
$Location = "West Europe"
```

then we set the Publisher and query the list of Offers:

```
$publisher = "nginxinc"
Get-AzVMImageOffer -Location $location -PublisherName $publisher | Select Offer
```

This is the Result:

```
Offer
-----
nginx-plus-ent-v1
nginx-plus-v1
nginx_plus_with_nginx_app_protect_developer
nginx_plus_with_nginx_app_protect_premium
```

Then, we will list SKUs for Nginx Plus:

```
$offer = "nginx-plus-v1"
Get-AzVMImageSku -Location $location -PublisherName $publisher -Offer $offer | Select Skus
```

Result:

```
Skus
----
nginx-plus-centos7
nginx-plus-rhel7
nginx-plus-rhel8
nginx-plus-ub1604
nginx-plus-ub1804
```

If we want to use the Enterprise version of Nginx Plus, we can use the following code to list SKUs:

```
$offer = "nginx-plus-ent-v1"
Get-AzVMImageSku -Location $location -PublisherName $publisher -Offer $offer | Select Skus
```

Result:

```
Skus
----
nginx-plus-ent-centos7
nginx-plus-ent-rhel7
nginx-plus-ent-un1804
```

Reference --> https://medium.com/@gmusumeci/how-to-find-azure-windows-vm-images-for-terraform-or-packer-deployments-f3edaeb42466 

---

# Accept Azure Marketplace Terms

Before we execute the Terraform, we need to accept Azure Marketplace Terms, using the following PowerShell command:

```
Get-AzMarketplaceTerms -Publisher "nginxinc" -Product "nginx-plus-v1" -Name "nginx-plus-ub1804" | Set-AzMarketplaceTerms -Accept
```
