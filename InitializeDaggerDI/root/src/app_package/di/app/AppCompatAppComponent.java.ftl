package ${packageName}.di.app;

import android.support.v7.app.AppCompatActivity;

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

    Map<Class<? extends AppCompatActivity>, ActivityComponentBuilder> getActivityComponentBuilders();
}
