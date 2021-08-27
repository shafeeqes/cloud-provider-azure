module sigs.k8s.io/cloud-provider-azure

go 1.16

replace (
	// these replacements are pinned to a commit which is the sha associated with the 1.22.0 tag on k/k
	// as you cannot pin them to v1.22.0 directly
	k8s.io/api => k8s.io/kubernetes/staging/src/k8s.io/api v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/apiextensions-apiserver => k8s.io/kubernetes/staging/src/k8s.io/apiextensions-apiserver v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/apimachinery => k8s.io/kubernetes/staging/src/k8s.io/apimachinery v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/apiserver => k8s.io/kubernetes/staging/src/k8s.io/apiserver v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/cli-runtime => k8s.io/kubernetes/staging/src/k8s.io/cli-runtime v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/client-go => k8s.io/kubernetes/staging/src/k8s.io/client-go v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/cloud-provider => k8s.io/kubernetes/staging/src/k8s.io/cloud-provider v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/cluster-bootstrap => k8s.io/kubernetes/staging/src/k8s.io/cluster-bootstrap v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/code-generator => k8s.io/kubernetes/staging/src/k8s.io/code-generator v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/component-base => k8s.io/kubernetes/staging/src/k8s.io/component-base v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/component-helpers => k8s.io/kubernetes/staging/src/k8s.io/component-helpers v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/controller-manager => k8s.io/kubernetes/staging/src/k8s.io/controller-manager v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/cri-api => k8s.io/kubernetes/staging/src/k8s.io/cri-api v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/csi-translation-lib => k8s.io/kubernetes/staging/src/k8s.io/csi-translation-lib v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/kube-aggregator => k8s.io/kubernetes/staging/src/k8s.io/kube-aggregator v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/kube-controller-manager => k8s.io/kubernetes/staging/src/k8s.io/kube-controller-manager v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/kube-proxy => k8s.io/kubernetes/staging/src/k8s.io/kube-proxy v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/kube-scheduler => k8s.io/kubernetes/staging/src/k8s.io/kube-scheduler v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/kubectl => k8s.io/kubernetes/staging/src/k8s.io/kubectl v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/kubelet => k8s.io/kubernetes/staging/src/k8s.io/kubelet v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/legacy-cloud-providers => k8s.io/kubernetes/staging/src/k8s.io/legacy-cloud-providers v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/metrics => k8s.io/kubernetes/staging/src/k8s.io/metrics v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/mount-utils => k8s.io/kubernetes/staging/src/k8s.io/mount-utils v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/pod-security-admission => k8s.io/pod-security-admission v0.22.0
	k8s.io/sample-apiserver => k8s.io/kubernetes/staging/src/k8s.io/sample-apiserver v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/sample-cli-plugin => k8s.io/kubernetes/staging/src/k8s.io/sample-cli-plugin v0.0.0-20210804175619-c2b5237ccd9c
	k8s.io/sample-controller => k8s.io/kubernetes/staging/src/k8s.io/sample-controller v0.0.0-20210804175619-c2b5237ccd9c
)

require (
	github.com/spf13/cobra v1.1.3
	k8s.io/apimachinery v0.22.0
	k8s.io/cloud-provider v0.0.0
	k8s.io/component-base v0.22.0
	k8s.io/klog v1.0.0
	k8s.io/kubernetes v1.22.0
	k8s.io/legacy-cloud-providers v0.0.0
)
