package ${packageName}.di.app

import dagger.Module
import dagger.Provides
import ${packageName}.App
import javax.inject.Singleton

@Module
class AppModule(private var application: App) {
    @Provides
    @Singleton
    fun provideApplication(): App {
        return application
    }

    // FIXME: Sample
    @Provides
    @Singleton
    fun provideSampleText(): String {
        return "injection!!"
    }

    // NOTE: Add dependencies here
}
