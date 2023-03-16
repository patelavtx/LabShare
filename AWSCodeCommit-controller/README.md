
# Sample AWS CodeBuild + CodePipeline deploying Aviatrix AWS controller

## Brief


```
1.  Deploy controller using aws cicd  (folder awscid-controller)
2.  TF code (tfpipeline-awscontroller);   remember to copy "/use-tf-state/backend.tf" from step 1 to this folder
3.  Secrets Manager used to pass sensitive data via ENV variables -->  ./awscicd-controller/codebuild_and_codepipeline/buildspec/*yml)
4.  /awscid-controller/cidcd-pipeline.tf -->  codebuild uses custom docker image : patela31/dockerctrl:1.0


```



