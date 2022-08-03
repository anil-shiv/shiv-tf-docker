FROM anilrgpv.jfrog.io/devops-docker/shiv-centos8

# Packer installation
ARG PACKER_VER=1.8.2

RUN wget -O /tmp/packer.zip \
    "https://releases.hashicorp.com/packer/${PACKER_VER}/packer_${PACKER_VER}_linux_amd64.zip" \
  && unzip -o /tmp/packer.zip -d /usr/local/bin \
  && rm -f /tmp/packer.zip


# Terraform installation
ARG TERRAFORM_VER=1.2.6
RUN wget -O /tmp/terraform.zip \
    "https://releases.hashicorp.com/terraform/${TERRAFORM_VER}/terraform_${TERRAFORM_VER}_linux_amd64.zip" \
  && unzip -o /tmp/terraform.zip -d /usr/local/bin \
  && rm -f /tmp/terraform.zip