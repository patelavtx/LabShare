
# Sample AWS CodeBuild + CodePipeline deploying Aviatrix AWS controller


``` + deploy controller using aws cicd  (folder awscid-controller) and TF code (remember to copy ./use-tf-state/backend.tf to controller repo directory  before pushing to AWS Codecommit)
    + Secrets Manager used to pass sensitive data via ENV variables -->  ./awscicd-controller/codebuild_and_codepipeline/buildspec/*yml)
    + ./awscid-controller/cidcd-pipeline.tf -->  codebuild uses custom docker image : patela31/dockerctrl:1.0
```



