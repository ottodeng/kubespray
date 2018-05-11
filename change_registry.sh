#!/bin/bash
all_image_files=(
roles/download/defaults/main.yml
roles/kubernetes-apps/ansible/defaults/main.yml
)

for file in ${all_image_files[@]} ; do
    sed -i 's/gcr.io\/google-containers\//ottodeng\/gcr.io_google-containers_/g' $file
    sed -i 's/gcr.io\/google_containers\//ottodeng\/gcr.io_google_containers_/g' $file
    sed -i 's/quay.io\/coreos\//ottodeng\/quay.io_coreos_/g' $file
    sed -i 's/quay.io\/calico\//ottodeng\/quay.io_calico_/g' $file
    sed -i 's/quay.io\/external_storage\//ottodeng\/quay.io_external_storage_/g' $file
    sed -i 's/quay.io\/kubespray\//ottodeng\/quay.io_kubespray_/g' $file
    sed -i 's/quay.io\/kubernetes-ingress-controller\//ottodeng\/quay.io_kubernetes-ingress-controller_/g' $file
done
