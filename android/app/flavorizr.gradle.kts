import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("development") {
            dimension = "flavor-type"
            applicationId = "com.example.sayko.development"
            resValue(type = "string", name = "app_name", value = "Sayko (Development)")
        }
        create("staging") {
            dimension = "flavor-type"
            applicationId = "com.example.sayko.staging"
            resValue(type = "string", name = "app_name", value = "Sayko (Staging)")
        }
        create("production") {
            dimension = "flavor-type"
            applicationId = "com.example.sayko"
            resValue(type = "string", name = "app_name", value = "Sayko")
        }
    }
}