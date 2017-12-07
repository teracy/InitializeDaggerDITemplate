package ${packageName}.di.activity;

import android.support.v7.app.AppCompatActivity;

import dagger.Module;
import dagger.Provides;
import ${packageName}.di.scope.ActivityScope;

@Module
public abstract class ActivityModule<T extends AppCompatActivity> {
    protected T activity;

    public ActivityModule(T activity) {
        this.activity = activity;
    }

    @Provides
    @ActivityScope
    T provideActivity() {
        return activity;
    }

    // NOTE: Add dependencies here
}
