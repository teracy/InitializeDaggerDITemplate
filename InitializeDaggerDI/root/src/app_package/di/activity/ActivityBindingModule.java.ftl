package ${packageName}.di.activity;

import dagger.Binds;
import dagger.Module;
import dagger.multibindings.IntoMap;
import ${packageName}.view.activity.SampleActivity;
import ${packageName}.view.activity.SampleActivityComponent;

// TODO: Modify @Module annotation accordingly
@Module(subcomponents = {SampleActivityComponent.class})
public abstract class ActivityBindingModule {
    @Binds
    @IntoMap
    @ActivityMapKey(SampleActivity.class)
    abstract ActivityComponentBuilder getSampleActivityComponentBuilder(SampleActivityComponent.Builder builder);

    // NOTE: Add injection map here
}
