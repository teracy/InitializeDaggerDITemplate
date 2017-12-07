package ${packageName}.di.app;

import javax.inject.Singleton;

import dagger.Module;
import dagger.Provides;
import ${packageName}.App;

@Module
public class AppModule {
    private App application;

    public AppModule(App application) {
        this.application = application;
    }

    @Provides
    @Singleton
    public App provideApplication() {
        return application;
    }

    // FIXME: Sample
    @Provides
    @Singleton
    public String provideSampleText() {
        return "injection!!";
    }
}
