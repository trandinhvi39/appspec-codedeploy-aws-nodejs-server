# Appspec Code Deploy Service AWS with NodeJS Server

Example to config appspec.yml file for CodeDeploy service of AWS

### Deployment lifecycle

- Application Stop -> Before Install -> After Install -> Application Start -> Validate Service

- ApplicationStop – This deployment lifecycle event occurs even before the application revision is downloaded.
  You can specify scripts for this event to gracefully stop the application or remove currently installed packages in preparation for a deployment.
  The AppSpec file and scripts used for this deployment lifecycle event are from the previous successfully deployed application revision
- BeforeInstall – You can use this deployment lifecycle event for preinstall tasks, such as decrypting files and creating a backup of the current version.
- AfterInstall – Use to run tasks after the replacement task set is created and one of the target groups is associated with it. If an optional test listener is specified, it is associated with the original task set. The results of a hook function at this lifecycle event can trigger a rollback
- ApplicationStart – You typically use this deployment lifecycle event to restart services that were stopped during ApplicationStop
- ValidateService – This is the last deployment lifecycle event. It is used to verify the deployment was completed successfully

### References For AWS

[aws codedeploy structure hooks](https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html)
