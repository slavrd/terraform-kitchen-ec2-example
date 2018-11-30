# Terraform-Kitchen example with EC2

A basic terraform-kitchen example testing an EC2 instance created with TF AWS provider.

## Prerequisites

### AWS Setup

* Create AWS access key
* Create an EC2 key pair
* Make sure the default security group in the VPC you will use allows SSH access from your IP

### Install Terraform

[Terraform installation instructions](https://www.terraform.io/intro/getting-started/install.html#installing-terraform)

### Set up rbenv - instructions for MAC

* Install rbenv - run `brew install rbenv`
* Initialize rbenv - add to `~/.bash_profile` line `eval "$(rbenv init -)"`
* Run `source ~/.bash_profile`
* Install ruby 2.3.1 with rbenv - run `rbenv install 2.3.1` , check `rbenv versions`
* Set ruby version for the project to 2.3.1 - run `rbenv local 2.3.1` , check `rbenv local`

### Install needed Ruby Gems

* Install bundler - run `gem install bundler`
* Install gems from Gemfile - run `bundle install`

## Project Setup

### Create Terraform variables file

Create file `testing.tfvars` in the project directory. In it place the following variables and their values as key-value pairs

```HCL
access_key = "your AWS access key id"
secret_key = "your AWS secret key"
key_name = "name of the key pair"
region = "desired AWS region"
ami = "desired ami id"
instance_type = "type of instance"
```

### Set up kitchen

In .kitchen.yml set the section

```YAML
key_files:
  - path/to/AWS/key-pair/private/key
```

## Run Kitchen tests

* List kitchen environment - `bundle exec kitchen list`
* Build kitchen environment - `bundle exec kitchen converge`
* Run kitchen tests - `bundle exec kitchen verify`
* Destroy kitchen environment - `bundle exec kitchen destroy`
* Automatically build, test, destroy - `bundle exec kitchen test`