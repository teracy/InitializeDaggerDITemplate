package ${packageName}.di.app;

import android.app.Activity;

import java.util.Map;

import javax.inject.Singleton;

import dagger.Component;
import ${packageName}.App;
import ${packageName}.di.activity.ActivityBindingModule;
import ${packageName}.di.activity.ActivityComponentBuilder;

@Singleton
@Component(modules = {AppModule.class, ActivityBindingModule.class})
public interface AppComponent {
    void inject(App application);

    Map<Class<? extends Activity>, ActivityComponentBuilder> getActivityComponentBuilders();
}
