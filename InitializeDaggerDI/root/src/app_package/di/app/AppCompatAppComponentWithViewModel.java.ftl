package ${packageName}.di.app;

import android.arch.lifecycle.ViewModel;
import android.support.v7.app.AppCompatActivity;

import java.util.Map;

import javax.inject.Singleton;

import dagger.Component;
import ${packageName}.App;
import ${packageName}.di.activity.ActivityBindingModule;
import ${packageName}.di.activity.ActivityComponentBuilder;
import ${packageName}.di.viewmodel.ViewModelBindingModule;
import ${packageName}.di.viewmodel.ViewModelComponentBuilder;

@Singleton
@Component(modules = {AppModule.class, ActivityBindingModule.class, ViewModelBindingModule.class})
public interface AppComponent {
    void inject(App application);

    Map<Class<? extends AppCompatActivity>, ActivityComponentBuilder> getActivityComponentBuilders();

    Map<Class<? extends ViewModel>, ViewModelComponentBuilder> getViewModelComponentBuilders();
}
