package ${packageName};

import android.app.Application;

import ${packageName}.di.app.AppComponent;
import ${packageName}.di.app.AppModule;
import ${packageName}.di.app.DaggerAppComponent;

public class App extends Application {
    private static AppComponent appComponent;

    @Override
    public void onCreate() {
        super.onCreate();
        appComponent = DaggerAppComponent.builder().appModule(new AppModule(this)).build();
        appComponent.inject(this);
    }

    public static AppComponent getAppComponent() {
        return appComponent;
    }
}
