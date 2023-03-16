
# Sample AWS CodeBuild + CodePipeline deploying Aviatrix AWS controller

## Brief


```
1.  Deploy AWS CICD - codecommit + codebuild + codepipeline  (folder awscid-controller)
2.  Use controller TF code to push code to AWS codecommit    (folder tfpipeline-awscontroller) ; remember to copy '/use-tf-state/backend.tf' from step1 first 
3.  Secrets Manager used to pass sensitive data via ENV variables -->  ./awscicd-controller/codebuild_and_codepipeline/buildspec/*yml)
4.  /awscid-controller/cidcd-pipeline.tf -->  codebuild uses custom docker image : patela31/dockerctrl:1.0


```



