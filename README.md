# EnvironmentSetUpiOS <br>
Create Demo by separate Staging, Dev, and Production <br>

I don't understand English well Because the English language <br> is not my native language. Sorry before you read.
<br>
## How to add environment in XCode project <br>
Step 1 - Click on the project target and look at Configurations. <br>
Step 2 - Click "+" button in configurations to add new environment (Before they have Debug and Release) <br>
![step 1](https://github.com/apinun-wong/EnvironmentSetUpiOS/assets/49288081/d99092d7-61bd-46db-b5e2-b9a141a06cd4)
Step 3 - Choose a duplicate "Debug" configuration. <br>
![step2](https://github.com/apinun-wong/EnvironmentSetUpiOS/assets/49288081/987db84d-1661-49a2-9115-ae183bb4ec9c) <br>
Step 4 - Add "SWIFT_ACTIVE_COMPILATION_CONDITIONS" This is a name that will use when the App needs to check the environment conditions in Swift programming <br>
![Screenshot 2566-07-22 at 00 01 18](https://github.com/apinun-wong/EnvironmentSetUpiOS/assets/49288081/68e4ea94-1dc3-440e-9e4f-e8ff13427199) <br>
For Example <br>
![Screenshot 2566-07-22 at 00 01 57](https://github.com/apinun-wong/EnvironmentSetUpiOS/assets/49288081/5fd0bbe5-e543-4e7d-96d2-3f4981cb6da9) <br>
<br>
<br>
## How to add a scheme in iOS project 
### What do you do?  <br>
We need to build with an environment target.<br>
![Screenshot 2566-07-22 at 09 18 54](https://github.com/apinun-wong/EnvironmentSetUpiOS/assets/49288081/f08f79f7-661f-4813-9cc0-44637bf6fc0d) <br>
### How to add <br>
step 1 - Click New Scheme <br>
![Screenshot 2566-07-22 at 09 19 53](https://github.com/apinun-wong/EnvironmentSetUpiOS/assets/49288081/cb1546ca-32ea-424f-98f1-3a80ed9fa0ae) <br>
Step 2 - Make a new Scheme name (scheme name should likely be environment name.) <br>
![Screenshot 2566-07-22 at 09 20 38](https://github.com/apinun-wong/EnvironmentSetUpiOS/assets/49288081/7ac2b249-38e7-4040-966c-eb894f0f64ea) <br>
Step 3 - Choose Build with new Scheme and Click Edit Scheme.<br>
![Screenshot 2566-07-22 at 09 23 10](https://github.com/apinun-wong/EnvironmentSetUpiOS/assets/49288081/ffcb4d3c-b91b-4502-827f-fc308c47ef2f)<br>
Step 4 - Click Tab info and choose Build Configuration same scheme. <br>
![Screenshot 2566-07-22 at 09 23 56](https://github.com/apinun-wong/EnvironmentSetUpiOS/assets/49288081/2afad0ba-716d-49db-b09e-7ab72bb96b4d) <br>
<br>
<br>
## Add Configurations File when we need to use different settings (App name, version, or something) <br>
Step 1 - Right click in a folder in the project and choose "new file". After searching type with this picture.<br>
![Screenshot 2566-07-22 at 09 34 14](https://github.com/apinun-wong/EnvironmentSetUpiOS/assets/49288081/4eca8dac-4f51-4131-b3a1-c756e0b95be0) <br>

Step 2 - Adding new configurations(Focus on "#include" when you used podfile.<br>
```
#include "Pods/Target Support Files/Pods-EnvironmentSeparateDemo/Pods-EnvironmentSeparateDemo.staging.xcconfig"
#include "Pods/Target Support Files/Pods-EnvironmentSeparateDemoTests/Pods-EnvironmentSeparateDemoTests.staging.xcconfig"
APP_NAME = Demo Staging
VERSION_NAME = 1.0.0

PAGE1_CONFIG_TITLE = Hi Staging.
PAGE1_CONFIG_TITLE2 = I am Developer Staging.
PAGE1_CONFIG_TITLE3 = I live in Thailand Staging.
```
<br>

#### We use configuration files with plist.info files or build settings in the project.<br>
![Screenshot 2566-07-22 at 09 37 26](https://github.com/apinun-wong/EnvironmentSetUpiOS/assets/49288081/f167aebf-5e5f-4a74-ab14-6580a6656fef) <br>
![Screenshot 2566-07-22 at 09 39 26](https://github.com/apinun-wong/EnvironmentSetUpiOS/assets/49288081/91c5b2bf-f3de-4953-8025-a9d6f51ae373) <br>

#### In Code <br>

```
    private func setUpUI() {
        let infoDictionary = Bundle.main.infoDictionary
        if let title1 = infoDictionary?["MyKeyLabel1"] as? String {
            self.title1Label.text = title1
        }
        
        if let title2 = infoDictionary?["MyKeyLabel2"] as? String {
            self.title2Label.text = title2
        }
        
        if let title3 = infoDictionary?["MyKeyLabel3"] as? String {
            self.title3Label.text = title3
        }
    }
```






