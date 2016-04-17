## sample project for [cucumber-jvm/issues/972](https://github.com/cucumber/cucumber-jvm/issues/972)

The problem only happens on windows (produced on Windows 7):

```
git clone https://github.com/mrduguo/gradle-cucumber-jvm-issue-972.git

cd gradle-cucumber-jvm-issue-972

./gradlew

```

It will fail with exception:
```
:clean                                                                   
:compileJava UP-TO-DATE     
:processResources UP-TO-DATE      
:classes UP-TO-DATE      
:jar                 
:assemble                 
:compileTestJava                                                         
:processTestResources                 
:testClasses                 
:test FAILED                                                  
              
FAILURE: Build failed with an exception.
              
* What went wrong:
Execution failed for task ':test'.
> Could not generate test report to 'PROJECT_ROOT\build\reports\tests'.
              
* Try:        
Run with --info or --debug option to get more log output.
              
* Exception is:
org.gradle.api.tasks.TaskExecutionException: Execution failed for task ':test'.
        at org.gradle.api.internal.tasks.execution.ExecuteActionsTaskExecuter.executeActions(ExecuteActionsTaskExecuter.java:69)
        at org.gradle.api.internal.tasks.execution.ExecuteActionsTaskExecuter.execute(ExecuteActionsTaskExecuter.java:46)
        at org.gradle.api.internal.tasks.execution.PostExecutionAnalysisTaskExecuter.execute(PostExecutionAnalysisTaskExecuter.java:35)
        at org.gradle.api.internal.tasks.execution.SkipUpToDateTaskExecuter.execute(SkipUpToDateTaskExecuter.java:64)
        at org.gradle.api.internal.tasks.execution.ValidatingTaskExecuter.execute(ValidatingTaskExecuter.java:58)
        at org.gradle.api.internal.tasks.execution.SkipEmptySourceFilesTaskExecuter.execute(SkipEmptySourceFilesTaskExecuter.java:52)
        at org.gradle.api.internal.tasks.execution.SkipTaskWithNoActionsExecuter.execute(SkipTaskWithNoActionsExecuter.java:52)
        at org.gradle.api.internal.tasks.execution.SkipOnlyIfTaskExecuter.execute(SkipOnlyIfTaskExecuter.java:53)
        at org.gradle.api.internal.tasks.execution.ExecuteAtMostOnceTaskExecuter.execute(ExecuteAtMostOnceTaskExecuter.java:43)
        at org.gradle.execution.taskgraph.DefaultTaskGraphExecuter$EventFiringTaskWorker.execute(DefaultTaskGraphExecuter.java:203)
        at org.gradle.execution.taskgraph.DefaultTaskGraphExecuter$EventFiringTaskWorker.execute(DefaultTaskGraphExecuter.java:185)
        at org.gradle.execution.taskgraph.AbstractTaskPlanExecutor$TaskExecutorWorker.processTask(AbstractTaskPlanExecutor.java:66)
        at org.gradle.execution.taskgraph.AbstractTaskPlanExecutor$TaskExecutorWorker.run(AbstractTaskPlanExecutor.java:50)
        at org.gradle.execution.taskgraph.DefaultTaskPlanExecutor.process(DefaultTaskPlanExecutor.java:25)
        at org.gradle.execution.taskgraph.DefaultTaskGraphExecuter.execute(DefaultTaskGraphExecuter.java:110)
        at org.gradle.execution.SelectedTaskExecutionAction.execute(SelectedTaskExecutionAction.java:37)
        at org.gradle.execution.DefaultBuildExecuter.execute(DefaultBuildExecuter.java:37)
        at org.gradle.execution.DefaultBuildExecuter.access$000(DefaultBuildExecuter.java:23)
        at org.gradle.execution.DefaultBuildExecuter$1.proceed(DefaultBuildExecuter.java:43)
        at org.gradle.execution.DryRunBuildExecutionAction.execute(DryRunBuildExecutionAction.java:32)
        at org.gradle.execution.DefaultBuildExecuter.execute(DefaultBuildExecuter.java:37)
        at org.gradle.execution.DefaultBuildExecuter.execute(DefaultBuildExecuter.java:30)
        at org.gradle.initialization.DefaultGradleLauncher$4.run(DefaultGradleLauncher.java:154)
        at org.gradle.internal.Factories$1.create(Factories.java:22)
        at org.gradle.internal.progress.DefaultBuildOperationExecutor.run(DefaultBuildOperationExecutor.java:90)
        at org.gradle.internal.progress.DefaultBuildOperationExecutor.run(DefaultBuildOperationExecutor.java:52)
        at org.gradle.initialization.DefaultGradleLauncher.doBuildStages(DefaultGradleLauncher.java:151)
        at org.gradle.initialization.DefaultGradleLauncher.access$200(DefaultGradleLauncher.java:32)
        at org.gradle.initialization.DefaultGradleLauncher$1.create(DefaultGradleLauncher.java:99)
        at org.gradle.initialization.DefaultGradleLauncher$1.create(DefaultGradleLauncher.java:93)
        at org.gradle.internal.progress.DefaultBuildOperationExecutor.run(DefaultBuildOperationExecutor.java:90)
        at org.gradle.internal.progress.DefaultBuildOperationExecutor.run(DefaultBuildOperationExecutor.java:62)
        at org.gradle.initialization.DefaultGradleLauncher.doBuild(DefaultGradleLauncher.java:93)
        at org.gradle.initialization.DefaultGradleLauncher.run(DefaultGradleLauncher.java:82)
        at org.gradle.launcher.exec.InProcessBuildActionExecuter$DefaultBuildController.run(InProcessBuildActionExecuter.java:94)
        at org.gradle.tooling.internal.provider.ExecuteBuildActionRunner.run(ExecuteBuildActionRunner.java:28)
        at org.gradle.launcher.exec.ChainingBuildActionRunner.run(ChainingBuildActionRunner.java:35)
        at org.gradle.launcher.exec.InProcessBuildActionExecuter.execute(InProcessBuildActionExecuter.java:43)
        at org.gradle.launcher.exec.InProcessBuildActionExecuter.execute(InProcessBuildActionExecuter.java:28)
        at org.gradle.launcher.exec.ContinuousBuildActionExecuter.execute(ContinuousBuildActionExecuter.java:75)
        at org.gradle.launcher.exec.ContinuousBuildActionExecuter.execute(ContinuousBuildActionExecuter.java:45)
        at org.gradle.launcher.exec.DaemonUsageSuggestingBuildActionExecuter.execute(DaemonUsageSuggestingBuildActionExecuter.java:51)
        at org.gradle.launcher.exec.DaemonUsageSuggestingBuildActionExecuter.execute(DaemonUsageSuggestingBuildActionExecuter.java:28)
        at org.gradle.launcher.cli.RunBuildAction.run(RunBuildAction.java:43)
        at org.gradle.internal.Actions$RunnableActionAdapter.execute(Actions.java:170)
        at org.gradle.launcher.cli.CommandLineActionFactory$ParseAndBuildAction.execute(CommandLineActionFactory.java:237)
        at org.gradle.launcher.cli.CommandLineActionFactory$ParseAndBuildAction.execute(CommandLineActionFactory.java:210)
        at org.gradle.launcher.cli.JavaRuntimeValidationAction.execute(JavaRuntimeValidationAction.java:35)
        at org.gradle.launcher.cli.JavaRuntimeValidationAction.execute(JavaRuntimeValidationAction.java:24)
        at org.gradle.launcher.cli.CommandLineActionFactory$WithLogging.execute(CommandLineActionFactory.java:206)
        at org.gradle.launcher.cli.CommandLineActionFactory$WithLogging.execute(CommandLineActionFactory.java:169)
        at org.gradle.launcher.cli.ExceptionReportingAction.execute(ExceptionReportingAction.java:33)
        at org.gradle.launcher.cli.ExceptionReportingAction.execute(ExceptionReportingAction.java:22)
        at org.gradle.launcher.Main.doAction(Main.java:33)
        at org.gradle.launcher.bootstrap.EntryPoint.run(EntryPoint.java:45)
        at org.gradle.launcher.bootstrap.ProcessBootstrap.runNoExit(ProcessBootstrap.java:54)
        at org.gradle.launcher.bootstrap.ProcessBootstrap.run(ProcessBootstrap.java:35)
        at org.gradle.launcher.GradleMain.main(GradleMain.java:23)
        at org.gradle.wrapper.BootstrapMainStarter.start(BootstrapMainStarter.java:30)
        at org.gradle.wrapper.WrapperExecutor.execute(WrapperExecutor.java:129)
        at org.gradle.wrapper.GradleWrapperMain.main(GradleWrapperMain.java:61)
Caused by: org.gradle.api.GradleException: Could not generate test report to 'PROJECT_ROOT\build\reports\tests'.
        at org.gradle.api.internal.tasks.testing.junit.report.DefaultTestReport.generateFiles(DefaultTestReport.java:90)
        at org.gradle.api.internal.tasks.testing.junit.report.DefaultTestReport.generateReport(DefaultTestReport.java:45)
        at org.gradle.api.tasks.testing.Test.executeTests(Test.java:561)
        at org.gradle.internal.reflect.JavaMethod.invoke(JavaMethod.java:75)
        at org.gradle.api.internal.project.taskfactory.AnnotationProcessingTaskFactory$StandardTaskAction.doExecute(AnnotationProcessingTaskFactory.java:227)
        at org.gradle.api.internal.project.taskfactory.AnnotationProcessingTaskFactory$StandardTaskAction.execute(AnnotationProcessingTaskFactory.java:220)
        at org.gradle.api.internal.project.taskfactory.AnnotationProcessingTaskFactory$StandardTaskAction.execute(AnnotationProcessingTaskFactory.java:209)
        at org.gradle.api.internal.AbstractTask$TaskActionWrapper.execute(AbstractTask.java:585)
        at org.gradle.api.internal.AbstractTask$TaskActionWrapper.execute(AbstractTask.java:568)
        at org.gradle.api.internal.tasks.execution.ExecuteActionsTaskExecuter.executeAction(ExecuteActionsTaskExecuter.java:80)
        at org.gradle.api.internal.tasks.execution.ExecuteActionsTaskExecuter.executeActions(ExecuteActionsTaskExecuter.java:61)
        ... 60 more
Caused by: org.gradle.api.UncheckedIOException: Could not write to file 'PROJECT_ROOT\build\reports\tests\packages\| 127.0.0.html'.

        at org.gradle.internal.IoActions$TextFileWriterIoAction.execute(IoActions.java:115)
        at org.gradle.internal.IoActions$TextFileWriterIoAction.execute(IoActions.java:91)
        at org.gradle.internal.IoActions.writeTextFile(IoActions.java:38)
        at org.gradle.reporting.HtmlReportRenderer$DefaultHtmlReportContext.renderHtmlPage(HtmlReportRenderer.java:117)
        at org.gradle.api.internal.tasks.testing.junit.report.DefaultTestReport$2.render(DefaultTestReport.java:82)
        at org.gradle.api.internal.tasks.testing.junit.report.DefaultTestReport$2.render(DefaultTestReport.java:74)
        at org.gradle.reporting.HtmlReportRenderer.render(HtmlReportRenderer.java:42)
        at org.gradle.api.internal.tasks.testing.junit.report.DefaultTestReport.generateFiles(DefaultTestReport.java:74)
        ... 70 more
Caused by: java.io.FileNotFoundException: PROJECT_ROOT\build\reports\tests\packages\| 127.0.0.html (The filename, directory name, o
r volume label syntax is incorrect)
        at org.gradle.internal.IoActions$TextFileWriterIoAction.execute(IoActions.java:108)
        ... 77 more
              


```
